"""
**********    copyright: (C) 2022 by die STEG Stadtentwicklung GmbH     **********

                Olgastraße 54                        Postfach 104341
                70182 Stuttgart                      70038 Stuttgart
                Telefon 0711/21068-0            Fax 0711/21068-112
                www.steg.de

**********************************************************************************
This script contains the StegSymbology class (core class) and all the required
libraries
created time: 29 April 2022
creator: Mohammad Hosseingholizadeh
edited date:
editor name:
"""

from abc import ABC
from qgis.core import QgsSymbol, QgsRuleBasedRenderer, QgsProject, QgsFillSymbol, QgsPalLayerSettings, \
    QgsVectorLayerSimpleLabeling, QgsTextFormat
from PyQt5.QtGui import QColor, QFont
from PyQt5.QtCore import Qt
from qgis.utils import iface


class StegSymbology(ABC):
    """
    This class should not use as a single object.
    It contains all the neccessary functionlities that use for all die STEG Symbology projects
    """

    @staticmethod
    def qml_loader(layer, layer_symbol_path):
        """
        Load symbology
        """
        print(layer)
        layer.loadNamedStyle(layer_symbol_path)
        layer.triggerRepaint()
        iface.layerTreeView().refreshLayerSymbology(layer.id())
        QgsProject.instance().addMapLayers([layer], False)

    @staticmethod
    def polygon_simple_symbology(layer, color, outline_color='', line_style='', line_width=''):
        """
        set a simple symbology for a polygon
        :param layer: QgsVectorLayer
        :param color: str like '255, 255, 255, 255'
        :param outline_color: str like '255, 255, 255, 255'
        :param line_style: str like 'dash'
        :param line_width: str like '2'
        :return: ---
        """
        symbol = QgsFillSymbol.createSimple(
            {'color': color, 'outline_color': outline_color, line_style: line_style, line_width: line_width}
        )
        layer.renderer().setSymbol(symbol)
        layer.triggerRepaint()
        iface.layerTreeView().refreshLayerSymbology(layer.id())
        QgsProject.instance().addMapLayers([layer], False)

    @staticmethod
    def symbol_layer_property(layer):
        """
        generate all the properties of layer symbols
        :return: ---
        """
        print(layer.renderer().symbol().symbolLayers()[0].properties())

    @staticmethod
    def simple_label(layer, field_name):
        """
        set a simple label
        :param layer: QgsVectorLayer
        :param field_name: the name of the field that the valuse is set as a label
        :return: ---
        """
        layer_settings = QgsPalLayerSettings()
        layer_settings.fieldName = field_name

        text_format = QgsTextFormat()
        text_format.setFont(QFont("MS Shell Dlg 2", 3))
        text_format.setSize(2)
        layer_settings.setFormat(text_format)

        labeling = QgsVectorLayerSimpleLabeling(layer_settings)
        layer.setLabelsEnabled(True)
        layer.setLabeling(labeling)
        layer.triggerRepaint()
        iface.layerTreeView().refreshLayerSymbology(layer.id())
        QgsProject.instance().addMapLayers([layer], False)

    @staticmethod
    def add_rule_to_renderer(renderer, label, expression, color, stroke_color=()):
        """
        Sub function of symbol_rule_base_renderer to set label, expression, color to new symbol class
        :param renderer: QgsRuleBasedRenderer
        :param label: str as a lebel of rule (description of rule)
        :param expression: str as expression of rule
        :param color: color of rule like (255, 255, 255)
        :param stroke_color: optional
        :return: ---
        """
        rule = renderer.rootRule().children()[0].clone()
        rule.setLabel(label)
        rule.setFilterExpression(expression)
        if len(stroke_color):
            print(len(stroke_color))
            rule.symbol().setColor(QColor(color[0], color[1], color[2], color[3]))
            rule.symbol().symbolLayer(0).setStrokeColor(
                QColor(stroke_color[0], stroke_color[1], stroke_color[2], stroke_color[3])
            )
            rule.symbol().symbolLayer(0).setStrokeStyle(Qt.DashLine)
            rule.symbol().symbolLayer(0).setStrokeWidth(1.06)
        else:
            print(len(stroke_color))
            rule.symbol().setColor(QColor(color[0], color[1], color[2]))
        renderer.rootRule().appendChild(rule)

    def symbol_rule_base_renderer_visualizer(self, layer, symbol_features):
        """
        Set and visulaize defined rules to layer (symbology: rule base)
        :param layer: QgsVectorLayer
        :param symbol_features: a list of tuple that contain the feture of each symbol rule
        :return: ---
        """
        symbol = QgsSymbol.defaultSymbol(layer.geometryType())
        renderer = QgsRuleBasedRenderer(symbol)

        for symbol_feature in symbol_features:
            #  len(symbol_feature) == 3 ==> without strock
            if len(symbol_feature) == 3:
                self.add_rule_to_renderer(
                    renderer, symbol_feature[0], symbol_feature[1], symbol_feature[2])
            else:
                self.add_rule_to_renderer(
                    renderer, symbol_feature[0], symbol_feature[1], symbol_feature[2], symbol_feature[3]
                )

        # remove first child
        renderer.rootRule().removeChildAt(0)
        layer.setRenderer(renderer)
        layer.triggerRepaint()
        iface.layerTreeView().refreshLayerSymbology(layer.id())
        QgsProject.instance().addMapLayers([layer], False)
