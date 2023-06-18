"""
**********    copyright: (C) 2022 by die STEG Stadtentwicklung GmbH     **********

                Olgastraße 54                        Postfach 104341
                70182 Stuttgart                      70038 Stuttgart
                Telefon 0711/21068-0            Fax 0711/21068-112
                www.steg.de

**********************************************************************************
This is a custom script for importinf raw data with their specific symbologies
created time: 02 May 2022
creator: Mohammad Hosseingholizadeh
edited date:
editor name:
"""
from .steg_gis import StegGIS
from .steg_symbology import StegSymbology
from .steg_static_file_path import STEG_SYMBOLOGY_PATH


class EnergyRawData(StegGIS, StegSymbology):
    """
    This class is used for importing eaw data for calculating energy demand
    """

    def __init__(self):
        super().__init__()
        self.script_folder_path = self.get_script_path_plugin()

    def __get_file_group_checker(self, layer_name, group_name):
        """
        get the QgsVectorLayer and check whether group exist or not
        """
        if self.activate_existing_layer(layer_name):
            self.delete_existing_layers([layer_name])

        layer_path = self.get_layer_path(layer_name)
        if layer_path:
            layer = self.duplicate_layer_from_source(layer_path, layer_name)
            group = self.find_group(group_name)
            if group is None:
                self.create_simple_group(group_name, -1)
            group = self.find_group(group_name)
            group.addLayer(layer)

            self.zoom_to_layer(layer)
            return layer
        else:
            return None

    def landparcel(self):
        """
        get the landparcel and set the specific style and check whether Rohdaten group exist or not
        """
        group_name = "Rohdaten"
        layer_name = 'Flurstücke'
        layer = self.__get_file_group_checker(layer_name, group_name)
        if layer is not None:
            landparcel_symbol_path = f"{self.script_folder_path}{STEG_SYMBOLOGY_PATH['flurstueck']}"
            self.qml_loader(layer, landparcel_symbol_path)
            return f'{layer_name} successfully loaded in {group_name} group \n'
        else:
            return f'(~~warning~~) {layer_name} is not exist or is not imported.' \
                   f' Load a shapefile (*.shp) or geopackage (*.gpkg) \n'

    def building(self):
        """
        get the building and set the specific style and check whether Rohdaten group exist or not
        """
        group_name = "Rohdaten"
        layer_name = 'Gebäude'
        layer = self.__get_file_group_checker(layer_name, group_name)
        if layer is not None:
            landparcel_symbol_path = f"{self.script_folder_path}{STEG_SYMBOLOGY_PATH['gebaeude']}"
            self.qml_loader(layer, landparcel_symbol_path)
            return f'{layer_name} successfully loaded in {group_name} group \n'
        else:
            return f'(~~warning~~) {layer_name} is not exist or is not imported.' \
                   f' Load a shapefile (*.shp) or geopackage (*.gpkg) \n'

    def street_name(self):
        """
        get the street name and set the specific style and check whether Rohdaten group exist or not
        """
        pass

    def building_number(self):
        """
        get the building number and set the specific style and check whether Rohdaten group exist or not
        """

        group_name = "Rohdaten"
        layer_name = 'Hausnummer'
        layer = self.__get_file_group_checker(layer_name, group_name)
        if layer is not None:
            self.polygon_simple_symbology(layer, '0,0,0,0', '0,0,0,0')
            self.simple_label(layer, "schriftinh")
            return f'{layer_name} successfully loaded in {group_name} group \n'
        else:
            return f'(~~warning~~) {layer_name} is not exist or is not imported.' \
                   f' Load a shapefile (*.shp) or geopackage (*.gpkg) \n'

    def landparcel_number(self):
        """
        get the landparcel number and set the specific style and check whether Rohdaten group exist or not
        """
        group_name = "Rohdaten"
        layer_name = 'Flurstücksnummer'
        layer = self.__get_file_group_checker(layer_name, group_name)
        if layer is not None:
            self.polygon_simple_symbology(layer, '0,0,0,0', '0,0,0,0')
            self.simple_label(layer, "schriftinh")
            return f'{layer_name} successfully loaded in {group_name} group \n'
        else:
            return f'(~~warning~~) {layer_name} is not exist or is not imported.' \
                   f' Load a shapefile (*.shp) or geopackage (*.gpkg) \n'

    def boundry(self):
        """
        get the boundry and set the specific style and check whether Rohdaten group exist or not
        """
        group_name = "Rohdaten"
        layer_name = 'Abgrenzung'
        layer = self.__get_file_group_checker(layer_name, group_name)
        if layer is not None:
            landparcel_symbol_path = f"{self.script_folder_path}{STEG_SYMBOLOGY_PATH['abgrenzung']}"
            self.qml_loader(layer, landparcel_symbol_path)
            return f'{layer_name} successfully loaded in {group_name} group \n'
        else:
            return f'(~~warning~~) {layer_name} is not exist or is not imported.' \
                   f' Load a shapefile (*.shp) or geopackage (*.gpkg) \n'
