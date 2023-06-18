"""
**********    copyright: (C) 2022 by die STEG Stadtentwicklung GmbH     **********

                Olgastraße 54                        Postfach 104341
                70182 Stuttgart                      70038 Stuttgart
                Telefon 0711/21068-0            Fax 0711/21068-112
                www.steg.de

**********************************************************************************
This script contains the StegMap class and all the required libraries
created time: 02 May 2022
creator: Mohammad Hosseingholizadeh
edited date:
editor name:
"""
from qgis.core import QgsPrintLayout, QgsLayoutPoint, QgsUnitTypes, QgsLayoutItemLabel, QgsLayerTree, \
    QgsLayoutItemPicture, QgsLayoutItemScaleBar, QgsLayoutItemLegend, QgsLegendStyle, QgsLayoutSize, \
    QgsLayoutItemPage, QgsLayoutItemMap, QgsLayoutMeasurement, QgsLayoutExporter, QgsTextBackgroundSettings

from PyQt5.QtGui import QColor, QFont
from .steg_gis import StegGIS
from  .steg_static_file_path import STEG_MAP_LOGO_PATH


class StegMap(StegGIS):
    """
    It contains all the neccessary functionlities that use for generating map and layouts for all die STEG projects
    """

    def __init__(self):
        super().__init__()
        self.__root_list = []

    @property
    def __boundery_availability_checker(self):
        if self.activate_existing_layer('Abgrenzung'):
            return self.activate_existing_layer('Abgrenzung')[0]
        else:
            return None

    def __layer_availability_checker(self, layer_name):
        if self.activate_existing_layer(layer_name):
            return self.activate_existing_layer(layer_name)[0]
        else:
            return None

    @staticmethod
    def __scale_rounder(layout_map):
        scale = int(str(layout_map.scale()).split('.')[0])
        print(scale)
        scale_round_gt_1000 = (scale // 1000) * 1000
        scale_round_lt_1000 = (scale // 100) * 100
        scale_len = len(str(layout_map.scale()).split('.')[0])
        if scale_len > 3:
            return scale_round_gt_1000 + 1000 if scale % 1000 > 500 else scale_round_gt_1000 + 500
        elif scale_len == 3:
            return scale_round_lt_1000 + 100 if scale % 100 > 50 else scale_round_lt_1000 + 50
        else:
            return 100

    def __layout_creator(self, plan_name):
        layout_lists = self.layout_manager.printLayouts()
        for layout in layout_lists:
            if layout.name() == plan_name:
                self.layout_manager.removeLayout(layout)
        layout = QgsPrintLayout(self.project)
        layout.initializeDefaults()
        layout.setName(plan_name)
        self.layout_manager.addLayout(layout)
        layout.pageCollection().page(0).setPageSize('A3', QgsLayoutItemPage.Orientation.Landscape)
        return layout

    def __layout_map_window_creator(self, layer, loced_layers, layout, start_x, start_y, width, height):
        self.__map_window = QgsLayoutItemMap(layout)
        self.__map_window.setRect(1, 1, 1, 1)
        self.__map_window.attemptMove(QgsLayoutPoint(start_x, start_y, QgsUnitTypes.LayoutMillimeters))
        self.__map_window.attemptResize(QgsLayoutSize(width, height, QgsUnitTypes.LayoutMillimeters))
        if self.__boundery_availability_checker:
            boundry = self.__boundery_availability_checker
            self.__map_window.zoomToExtent(boundry.extent())
        else:
            self.__map_window.zoomToExtent(layer.extent())
        self.__map_scale = self.__scale_rounder(self.__map_window)
        self.__map_window.setScale(self.__map_scale)
        self.__map_window.setLayers(loced_layers)
        print(layer)
        self.__map_window.keepLayerStyles()
        print(self.__map_window.scale())
        self.__map_window.setFrameStrokeWidth(QgsLayoutMeasurement(0.1))
        self.__map_window.setFrameEnabled(True)
        layout.addLayoutItem(self.__map_window)
        # map.setBackgroundColor(QColor(255, 255, 25))

    @staticmethod
    def __layout_label_creator(
            layout, start_x, start_y, width, height, text='', text_color=QColor(), font_size=10,
            font_weight='regular', font_type='Arial', background_color=None
    ):
        label = QgsLayoutItemLabel(layout)
        label.setText(text)
        if font_weight == 'regular':
            label.setFont(QFont(f"{font_type}", font_size))
        else:
            label.setFont(QFont(f"{font_type}", font_size, QFont.Bold))
        label.setFontColor(text_color)
        if background_color is not None:
            label.setBackgroundColor(background_color)
            label.setBackgroundEnabled(True)

        label.adjustSizeToText()
        label.attemptMove(QgsLayoutPoint(start_x, start_y, QgsUnitTypes.LayoutMillimeters))
        label.attemptResize(QgsLayoutSize(width, height))
        layout.addLayoutItem(label)

    def __layout_scale_bar_creator(self, layout, start_x, start_y, width, height):
        scale_bar = QgsLayoutItemScaleBar(layout)
        scale_bar.setStyle('Single Box')
        scale_bar.setFont(QFont("Arial", 6))
        scale_bar.setFontColor(QColor("Black"))
        scale_bar.setFillColor(QColor("Gray"))
        scale_bar.setUnits(QgsUnitTypes.DistanceMeters)
        scale_bar.setMapUnitsPerScaleBarUnit(1)
        scale_bar.setUnitsPerSegment(self.__map_scale / 100)
        scale_bar.setHeight(2)
        scale_bar.setNumberOfSegments(5)
        scale_bar.setUnitLabel("m")
        scale_bar.setLinkedMap(self.__map_window)
        scale_bar.attemptMove(QgsLayoutPoint(start_x, start_y, QgsUnitTypes.LayoutMillimeters))
        scale_bar.attemptResize(QgsLayoutSize(width, height))
        layout.addLayoutItem(scale_bar)

    @staticmethod
    def __layout_picture_creator(layout, start_x, start_y, width, height, picture_path, mode='svg'):
        picture = QgsLayoutItemPicture(layout)
        picture.setResizeMode(QgsLayoutItemPicture.Zoom)
        if mode == 'raster':
            picture.setMode(QgsLayoutItemPicture.FormatRaster)
        picture.setPicturePath(picture_path)
        picture.attemptMove(QgsLayoutPoint(start_x, start_y, QgsUnitTypes.LayoutMillimeters))
        picture.attemptResize(QgsLayoutSize(width, height))
        layout.addLayoutItem(picture)

    def __layout_legend_creator(self, layout, legend_layers, start_x, start_y, width, height):
        """
        this function create a legend
        to create a legend we need to store layers into QgsLayerTree called root like legeng + a QgsVectorLayer
        if we want to create more than one layout this root should not be override and should be saved somewhere in the
        storage. if we do not store it, layout will not undrestant which layer belongs to this layout. to do so, a
        self.__root_list is defined to store all roots of layout inside.
        :param layout:
        :param layer:
        :param start_x:
        :param start_y:
        :param width:
        :param height:
        :return:
        """

        # it will use to refresh the layers in root.
        # Otherwise, interested layer will be duplicated if we want to reproduce it
        # self.__root_list.append(QgsLayerTree())
        #
        # if self.__boundery_availability_checker:
        #     self.__root_list[-1].addLayer(self.__boundery_availability_checker)
        # self.__root_list[-1].addLayer(layer)
        # self.__root_list.append(self.__root_list[-1])
        legend = QgsLayoutItemLegend(layout)
        legend.setAutoUpdateModel(False)
        group = legend.model().rootGroup()
        group.clear()
        for layer in legend_layers:
            group.addLayer(layer)
        # legend.model().setRootGroup(self.__root_list[-1])
        # legend.setLinkedMap(self.__map_window)
        legend.setStyleFont(QgsLegendStyle.Subgroup, QFont('Arial', 10, QFont.Bold))
        legend.setStyleFont(QgsLegendStyle.SymbolLabel, QFont('Arial', 8))
        legend.setSymbolHeight(5.5)
        legend.setSymbolWidth(9.5)
        legend.rstyle(QgsLegendStyle.Title).setMargin(QgsLegendStyle.Bottom, 0)
        legend.rstyle(QgsLegendStyle.Group).setMargin(QgsLegendStyle.Top, 4)
        legend.rstyle(QgsLegendStyle.Subgroup).setMargin(QgsLegendStyle.Top, 4)
        legend.rstyle(QgsLegendStyle.SymbolLabel).setMargin(QgsLegendStyle.Left, 4)
        legend.rstyle(QgsLegendStyle.Symbol).setMargin(QgsLegendStyle.Top, 3)
        legend.attemptResize(QgsLayoutSize(width, height))
        legend.attemptMove(QgsLayoutPoint(start_x, start_y, QgsUnitTypes.LayoutMillimeters))
        layout.addLayoutItem(legend)

    @staticmethod
    def __layout_pdf_exporter(layout, pdf_path):
        exporter = QgsLayoutExporter(layout)
        exporter.exportToPdf(pdf_path, QgsLayoutExporter.PdfExportSettings())

    def layout_executor(
            self, layer_name, plan_name, plan_area_type, plan_area_name, plan_text, project_number, pdf_path
    ):
        """
        generate layout which is equivalent to die STEG standards
        """
        _COPY_WRITE_TEXT = 'Geobasisdaten © LGL, www.lgl-bw.de/ Datei Erhalten: 01/2022\nErgänzt und Bearbeitung durch die STEG\nStadtentwicklung GmbH Olgastraße 54, 70182 Stuttgart,\nCopyrightvermerk Stand:06/ 2021 '
        if "/n" in plan_area_name:
            plan_area_full_name = plan_area_name.split('/n')
            print(plan_area_full_name)
            plan_area_text = f"{plan_area_type} {plan_area_full_name[0]}\n{plan_area_full_name[-1]}"
        else:
            plan_area_text = f"{plan_area_type} {plan_area_name}"

        # plan_text = f"{project_name}\n{plan_area_name}"
        plan_info_text = f"Projekt Nr.{project_number}\n{self.date_de()}/{self.os_operator_name()}"
        north_arrow_path = "C:/OSGEO4~1/apps/qgis-ltr/svg/arrows/NorthArrow_01.svg"
        # steg_logo_path = '//steg-stgt-6-fs.steg1.lokal/d/steg/steg_akademie/Logo_Vorlagen/Die_STEG_2010.jpg'
        steg_logo_path = f"{self.get_script_path_plugin()}{STEG_MAP_LOGO_PATH['steg_logo']}"
        steg_description_text = 'S t a d t e n t w i c k l u n g  G m b H\nS  t  a  n  d  o  r  t        S t u t t g a r t\nOlgastraße 54,        70182 Stuttgart'

        layers_name = [
            'Baualtersklassen', 'Energiebedarf absolut [kWh/a]', 'Energieverbrauch [kWh/a]',
            'Energiebedarf spezifisch [kWh/m²a]', 'Solarthermie', 'Photovoltaik',
            'Fenster', 'Außenwände', 'Dach', 'Kellerdecke', 'Heitzungsanlage'
        ]
        print('before')
        self.invisible_layers(layers_name)
        print('after')

        locked_layers = []
        legend_layers = []
        # the value of layer is like <QgsVectorLayer: 'Fenster' (ogr)>
        if self.activate_existing_layer('Gebäude'):
            raw_building = self.activate_existing_layer('Gebäude')[0]
            layer = self.activate_existing_layer(layer_name)[0]
            legend_layers.append(layer)
            self.visible_layer(layer)
            self.visible_layer(raw_building)
            locked_layers.append(layer)
            locked_layers.append(raw_building)
        else:
            layer = self.activate_existing_layer(layer_name)[0]
            legend_layers.append(layer)
            self.visible_layer(layer)
            locked_layers.append(layer)

        if self.activate_existing_layer('Abgrenzung'):
            boundry = self.activate_existing_layer('Abgrenzung')[0]
            legend_layers.append(boundry)
            self.visible_layer(boundry)
            locked_layers.append(boundry)

        if self.activate_existing_layer('Flurstücke'):
            land_parcel = self.activate_existing_layer('Flurstücke')[0]
            self.visible_layer(land_parcel)
            locked_layers.append(land_parcel)

        if self.activate_existing_layer('Hausnummer'):
            house_number = self.activate_existing_layer('Hausnummer')[0]
            self.visible_layer(house_number)
            locked_layers.append(house_number)

        if self.activate_existing_layer('Flurstücksnummer'):
            land_parcel_number = self.activate_existing_layer('Flurstücksnummer')[0]
            self.visible_layer(land_parcel_number)
            locked_layers.append(land_parcel_number)

        print('#' * 10, locked_layers)
        layout = self.__layout_creator(plan_name)
        self.__layout_map_window_creator(layer, locked_layers, layout, 20, 7, 294, 285)

        self.__layout_label_creator(layout, 23, 266, 82, 24, background_color=QColor(255, 255, 255))
        self.__layout_picture_creator(layout, 26, 276, 12, 10, north_arrow_path)
        self.__layout_label_creator(layout, 29.98, 272.685, 3, 3, 'N')
        self.__layout_scale_bar_creator(layout, 40, 267, 65, 8)
        self.__layout_label_creator(layout, 40, 278, 65, 10, text=_COPY_WRITE_TEXT, text_color=QColor(), font_size=6)

        # self.__layout_label_creator(layout, 22, 272, 65, 19, text_color=QColor(), font_size=6)  # text=''
        self.__layout_label_creator(layout, 320, 5, 96, 6, plan_name, QColor(0, 182, 228), 14, 'bold', 'Constantia')
        self.__layout_legend_creator(layout, legend_layers, 319, 12, 98, 186)
        self.__layout_label_creator(
            layout, 320, 220, 96, 20, plan_area_text, QColor(0, 182, 228), 20, 'bold', 'Constantia'
        )
        self.__layout_label_creator(layout, 320, 241, 96, 20, plan_text, QColor(), 11)
        self.__layout_label_creator(layout, 320, 286, 31, 6, plan_info_text, QColor(), 6)
        self.__layout_label_creator(layout, 356, 286, 14, 4, f"M 1:{self.__map_scale}", QColor(), 8)
        self.__layout_picture_creator(layout, 387, 278, 29, 7, steg_logo_path, mode='raster')
        self.__layout_label_creator(layout, 387, 285, 29, 7, steg_description_text, QColor(), 5)
        self.__layout_pdf_exporter(layout, pdf_path)
