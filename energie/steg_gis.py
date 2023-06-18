"""
**********    copyright: (C) 2022 by die STEG Stadtentwicklung GmbH     **********

                Olgastraße 54                        Postfach 104341
                70182 Stuttgart                      70038 Stuttgart
                Telefon 0711/21068-0            Fax 0711/21068-112
                www.steg.de

**********************************************************************************
This script contains the StegGIS class (core class) and all the required libraries
created time: 29 April 2022
creator: Mohammad Hosseingholizadeh
edited date: 24.08.2022
editor name: Mohammad
"""

from abc import ABC

from PyQt5.QtWidgets import QFileDialog
from PyQt5.QtCore import QVariant

from qgis.utils import iface
from qgis.core import QgsProject, QgsApplication, QgsField, QgsExpression, QgsExpressionContext, \
    QgsExpressionContextUtils, edit, QgsVectorFileWriter, QgsVectorLayer, QgsLayerTreeLayer, \
    QgsCoordinateReferenceSystem, QgsDataSourceUri

from datetime import date
import processing
import os
import sys
import subprocess


class StegGIS(ABC):
    """
    This class should not use as a single object.
    It contains all the neccessary functionlities that use for all die STEG GIS projects
    """

    def __init__(self):
        self.project = QgsProject.instance()
        self.layout_manager = QgsProject.instance().layoutManager()
        self.layer_tree_root = QgsProject.instance().layerTreeRoot()

    # date
    @staticmethod
    def date_en(divider_type='_'):
        """
        create date in english format like 2022_04_27 the _ is default and is changeable
        :return: str
        """
        return f'{divider_type}'.join(date.today().isoformat().split('-'))

    @staticmethod
    def date_de(divider_type='.'):
        """
        create date in german format like 27.04.2022. The . is default value and is changeable
        :return: str
        """
        return f'{divider_type}'.join(date.today().isoformat().split('-')[::-1])

    # os
    @staticmethod
    def os_operator_name():
        """
        retrieve the name of opetor regarding the login name of STEG employee.
        three first letter of sudents family name will be selected if their full name was set as user
        :return: str
        """
        operator_name = os.path.expanduser('~').split('\\')[-1]
        return operator_name if len(operator_name) < 5 else f'{operator_name[:3]}'

    @staticmethod
    def pachage_installer(package_name):
        """
        install a new package or python library (third party libraries)
        :param package_name: str -- like pyny3d
        """
        subprocess.check_call([sys.executable, "-m", "pip", "install", package_name])

    @staticmethod
    def pachage_uninstaller(package_name):
        """
        install a new package or python library (third party libraries)
        :param package_name:
        """
        subprocess.check_call([sys.executable, "-m", "pip", "uninstall", package_name])

    # layer or folder
    @staticmethod
    def get_layer_path(file_name=''):
        """
        Use QFileDialog to load the path of shapefile
        :return: str
        """

        return QFileDialog.getOpenFileName(
            QFileDialog(), f"Select {file_name} Shapefile or GeoPackage", filter="*.shp *.gpkg *.gml"
        )[0]

    @staticmethod
    def get_folder_path(file_name=''):
        """
        Use QFileDialog to load the path of Folder
        :return: str
        """
        return QFileDialog.getExistingDirectory(QFileDialog(), f"Select {file_name} folder")

    @staticmethod
    def get_qgis_project_folder_path():
        """
        get qgis project filder path
        :return: str
        """
        return QgsProject.instance().readPath("./")

    @staticmethod
    def temprory_layer_path_name(temprory_layer):
        """
        get the name of temprory layer name
        :param temprory_layer: QgsVectorLayer which is a temprory file
        """
        return temprory_layer.name()

    @staticmethod
    def find_geodata_folder_path(layer_path):
        """
        retriveing the path of project folder which is the folder of shapefiles coming from QField
        :return: str
        """
        return f"{'/'.join(layer_path.split('/')[:-1])}"

    @staticmethod
    def find_project_folder_path(layer_path):
        """
        retriveing the path of project folder which is the folder of shapefiles coming from QField
        :return: str
        """
        return f"{'/'.join(layer_path.split('/')[:-2])}"

    @staticmethod
    def existing_layer_path(layer):
        """
        find the path of layer which is in the format of QgsVectorLayer
        :param layer: a QgsVectorLayer
        :type layer: QgsVectorLayer
        :return: a str (path of layer)
        """
        return layer.dataProvider().dataSourceUri()

    @staticmethod
    def create_new_folder(project_folder_name, new_folder_name):
        """
        creates new folder
        :param project_folder_name: the folder of main project
        :param new_folder_name: the name of new folder
        :return: ---
        """
        new_path = f'{project_folder_name}/{new_folder_name}'
        if not os.path.exists(new_path):
            os.makedirs(new_path)

    @staticmethod
    def get_script_path_plugin():
        """
        get the folder path of the running python script
        it is used when the script is running in python environment like plugin
        is will not work properly in QGIS console
        :return: str - python script path
        """
        return os.path.dirname(__file__)

    @staticmethod
    def __get_script_path_console():
        """
        get the folder path of the running python script
        this will work just in QGIS console
        :return: str - python script path
        """
        from console.console import _console
        return _console.console.tabEditorWidget.currentWidget().path

    # Database
    @staticmethod
    def initilize_database(host, port, database_name, username, password):
        """
        connect to database
        :param host: str - host address
        :param port: str - port number
        :param database_name: str - database name
        :param username: str - username
        :param password: str - password
        :retrun: str - database uri
        """
        uri = QgsDataSourceUri()
        uri.setConnection(host, port, database_name, username, password)
        return uri

    @staticmethod
    def initilize_schema(
            uri, schema_name, table_name, geometry_field_name, where_key='', where_value='', primary_key_field_name=""
    ):
        """
        Schema initialization
        :param uri: str - database connection uri
        :param schema_name: str - schema name
        :param table_name: str - table name
        :param geometry_field_name: str - like geom, wkb_geometry
        :param where_key: str - optional
        :param where_value: str - optional
        :param primary_key_field_name: str - optional
        """
        where_clause = f"{where_key} = {where_value}" if where_key is not '' else ""
        uri.setDataSource(schema_name, table_name, geometry_field_name, where_clause, primary_key_field_name)
        return uri

    # display or load vector layer
    @staticmethod
    def display_layer(layer, layer_name, display=True):
        """
        activate QgsVectorLayer
        :param layer: vector layer like a layer created from QgsVectorLayer
        :param layer_name: a string showing the name of the layer in QGIS map window
        :param display: if display is False, layer will not be displayed in Qgis.
        It is just loaded in console of Qgis as a variable.
        :return: --
        """
        layer_disp = QgsProject.instance().addMapLayer(layer, display)
        layer_disp.setName(layer_name)

    @staticmethod
    def load_display_vector_data(layer_path, layer_name):
        """
        Use iface form qgis.utils to add vector data to the main map window of QGIS
        :return: vertor layer : <class 'qgis._core.QgsVectorLayer'>
        """
        layer = iface.addVectorLayer(layer_path, '', 'ogr')
        layer.setName(layer_name)
        return layer

    @staticmethod
    def create_temporary_layer(layer, temprory_layer_name):
        """
        Duplicate original data or create a new temprory layer from source layer to avoid any effect on soucre data
        :param layer: QgsVectorLayer
        :param temprory_layer_name: str for name of temprory layer
        :return: vertor layer : <class 'qgis._core.QgsVectorLayer'>
        """
        layer.selectAll()
        param = {'INPUT': layer, 'OUTPUT': 'memory:'}
        duplicated_layer = processing.run("native:saveselectedfeatures", param)['OUTPUT']
        layer.removeSelection()
        duplicated_layer.setName(temprory_layer_name)
        QgsProject.instance().addMapLayer(duplicated_layer, False)
        return duplicated_layer

    def create_temprory_layer_from_schema(self, uri, schema_name, table_name, geometry_field_name="wkb_geometry"):
        """
        create a temprory file from postgis schema with fixed geometry field name (wkb_geometry)
        :param uri: str - is the uri to database
        :param schema_name: str - schema name
        :param table_name: table name
        :param geometry_field_name: str - default value is "wkb_geometry"
        :return: QgsVectorLayer which is a temprory file
        """
        self.initilize_schema(uri, schema_name, table_name, geometry_field_name)
        layer = QgsVectorLayer(uri.uri(False), table_name, "postgres")
        return self.create_temporary_layer(layer, f'{table_name}_temp')

    @staticmethod
    def duplicate_layer_from_source(layer_path, layer_name):
        """
        Retreive layer from source which is equivalent to duplicate layer of qgis
        :param layer_path: str as the path of layer
        :param layer_name: str as a layer name
        :return: QgsVectorLayer
        """
        return QgsVectorLayer(layer_path, layer_name, 'ogr')

    @staticmethod
    def delete_layers(layer_list):
        """
        Remove single layer
        :param: QgsVectorLayer
        :return: ---
        """
        for layer in layer_list:
            QgsProject.instance().removeMapLayer(layer)

    @staticmethod
    def delete_existing_layers(layer_names_list):
        """
        delete a layer exist in layers window
        :param layer_names_list: a list containg the name of layer in layers window
        :return: ---
        """
        for layer_name in layer_names_list:
            print(QgsProject.instance().mapLayersByName(layer_name))
            if QgsProject.instance().mapLayersByName(layer_name):
                layer = QgsProject.instance().mapLayersByName(layer_name)[0]
                QgsProject.instance().removeMapLayer(layer)

    @staticmethod
    def activate_existing_layer(layer_name):
        """
        active a layer exist in layers window
        :param layer_name: the name of layer in layers window
        :return: ---
        """
        return QgsProject.instance().mapLayersByName(layer_name)

    @staticmethod
    def zoom_to_layer(layer):
        """
        Zoom to active layer
        :param layer: vector layer like a layer created from QgsVectorLayer
        :return: --
        """
        canvas = iface.mapCanvas()
        extent = layer.extent()
        canvas.setExtent(extent)

    @staticmethod
    def invisible_all_layers():
        """
        invisible all layers
        """
        for layer in QgsProject.instance().mapLayers().values():
            QgsProject.instance().layerTreeRoot().findLayer(layer.id()).setItemVisibilityChecked(False)

    @staticmethod
    def visible_layer(layer):
        """
        visible a layer
        """
        QgsProject.instance().layerTreeRoot().findLayer(layer.id()).setItemVisibilityChecked(True)

    @staticmethod
    def invisible_layer(layer):
        """
        invisible a layer
        """
        QgsProject.instance().layerTreeRoot().findLayer(layer.id()).setItemVisibilityChecked(False)

    def invisible_layers(self, layer_names_list):
        """
        invisible a layer
        """
        for layer_name in layer_names_list:
            print('layer1')
            layer = self.activate_existing_layer(layer_name)[0]
            print('layer2')
            print(layer_name, layer, type(layer_name))
            QgsProject.instance().layerTreeRoot().findLayer(layer.id()).setItemVisibilityChecked(False)

    @staticmethod
    def reterive_layer_path(layer):
        """
        get the QgsVectorLayer layer path
        """
        return layer.source()

    @staticmethod
    def change_layer_order(layer, layer_order_num):
        """
        change the index or order of layer
        """
        layer_tree = iface.layerTreeCanvasBridge().rootGroup()
        layer_tree.insertChildNode(layer_order_num, QgsLayerTreeLayer(layer))

    @staticmethod
    def find_layer_tree_object():
        """
        find all QgsLayerTreeLayer
        """
        return QgsProject.instance().layerTreeRoot().findLayers()

    # group
    def create_simple_group(self, group_name, order_number=0):
        """
        create a group
        :param group_name: str: name of group
        :param order_number: str: order of group ==> top=0, and bottom=-1
        """
        self.layer_tree_root.insertGroup(order_number, group_name)

    def find_group(self, group_name):
        """
        Find the existing group
        :param group_name: str as a group name
        :return: qgis._core.QgsLayerTreeGroup object
        """
        return self.layer_tree_root.findGroup(group_name)

    def create_group_plus_add_layers(self, group_name, group_layers, group_order_num=0):
        """
        Create and add group into layers window
        False is used to load data as an active layer but not display it
        """
        if self.find_group(group_name) is None:
            self.create_simple_group(group_name, group_order_num)
        for layer in group_layers:
            self.layer_tree_root.findGroup(group_name).addLayer(layer)
        QgsProject.instance().addMapLayers(group_layers, False)

    def remove_group(self, group_name):
        """
        Remove the existing group
        :param group_name: str as a group name
        :return: ---
        """
        self.layer_tree_root.removeChildNode(self.layer_tree_root.findGroup(group_name))

    # algorithm
    @staticmethod
    def print_all_algorithm():
        """
        Print all the algorithm for processing.run and print a list of all algorithms like buffer, ...
        :return: --
        """
        for alg in QgsApplication.processingRegistry().algorithms():
            print(alg.id(), "->", alg.displayName())

    @staticmethod
    def find_algorithm(algorithm_name):
        """
        Find the sutiable algorithm by typing a part of name like buffer, bounding, ...
        :param: algorithm_name: a string containing a part of algorithm name like 'bounding'
        :return: --
        """
        for alg in QgsApplication.processingRegistry().algorithms():
            print(alg.id()) if algorithm_name in (alg.displayName().lower() or alg.displayName().upper()) else None

    # selection
    @staticmethod
    def select_by_expression(layer, expression):
        """
        select a feature or features from a layer
        :param layer: QgsVectorLayer
        :param expression: str
        :return: ---
        """
        layer.selectByExpression(expression)

    @staticmethod
    def deselect_features(layer):
        """
        deselect selected features
        :param layer: QgsVectorLayer
        """
        layer.removeSelection()

    # field
    @staticmethod
    def find_field_index(layer, field_name):
        """
        Find the id or index of each field
        :param layer: vector layer created from QgsVectorLayer
        :param field_name: a string containg the name of interested field
        :return: a number : an integer
        """
        return layer.dataProvider().fieldNameIndex(field_name)

    def find_field_id_category(self, layer, field_categories):
        """
        update a dictionay containg the categories of fields name like
        field_categories = {"Geb": {"Geb_Art": None}, "Da": {"Da_San": None}, "AW": {"AW_San": None}}
        to find the ids of fields
        :param layer: QgsVectorLayer
        :param field_categories: dic
        :return: ---
        """
        for category_key, category_value in field_categories.items():
            for key, value in category_value.items():
                field_categories[category_key][key] = self.find_field_index(layer, key)

    @staticmethod
    def delete_unwanted_fields(layer, field_indexes_list):
        """
        Deleting a list of unwanted fields in one layer
        :param layer: vector layer created from QgsVectorLayer
        :param field_indexes_list: a list of integers showing the index of fields that are going to be deleted
        :return: a vector layer does not have unwanted fields : <class 'qgis._core.QgsVectorLayer'>
        """
        layer.dataProvider().deleteAttributes(field_indexes_list)
        layer.updateFields()
        return layer

    @staticmethod
    def edit_field_name(layer, field_index, new_field_name):
        """
        edit the name of fields
        :param layer: a vector layer created from QgsVectorLayer
        :param field_index: index or id of field that is going to be changed : integer
        :param new_field_name: a name for new field : string
        :return: vertor layer : <class 'qgis._core.QgsVectorLayer'>
        """
        layer.dataProvider().renameAttributes({field_index: new_field_name})
        layer.updateFields()
        return layer

    @staticmethod
    def create_new_field(layer, fields_name_list):
        """
        Create new field
        :param layer: a vector layer created from QgsVectorLayer
        :param fields_name_list: a list containing field name in a list
        :return: --
        """
        data_type = {
            'real': QVariant.Double,
            'int': QVariant.Int,
            'text': QVariant.String
        }
        new_fields = list()
        for field_name in fields_name_list:
            new_fields.append(QgsField(field_name[0], data_type[field_name[1]]))
        layer.dataProvider().addAttributes(new_fields)
        layer.updateFields()

    @staticmethod
    def calculate_min_bounding_box(layer):
        """
        Calculate a minimum bounding box for a polygon
        :return: vertor layer : <class 'qgis._core.QgsVectorLayer'>
        """
        param = {'INPUT': layer, 'OUTPUT': 'TEMPORARY_OUTPUT'}
        return processing.run("native:orientedminimumboundingbox", param)['OUTPUT']

    def merge_vector_layer(self, layer_1, layer_2, epsg_num):
        """
        :param layer_1: All types of layers like QgsVectorLayer, Postgis, temporary output
        :param layer_2: All types of layers like QgsVectorLayer, Postgis, temporary output
        :param epsg_num: enter the epsg number of coordinate system like 25832, 25833, ...
        :return: merged layer (temprory layer)
        """
        param = {'CRS': QgsCoordinateReferenceSystem(f'EPSG:{epsg_num}'),
                 'LAYERS': [self.reterive_layer_path(layer_1), self.reterive_layer_path(layer_2)],
                 'OUTPUT': 'TEMPORARY_OUTPUT'}

        return processing.run("native:mergevectorlayers", param)['OUTPUT']

    @staticmethod
    def join_one_to_one(input_layer, output_layer):
        """
        Joining buildng with layer containg minimum bounding box values
        :return: vertor layer : <class 'qgis._core.QgsVectorLayer'>
        """
        param = {'DISCARD_NONMATCHING': False,
                 'FIELD': 'ogc_fid',
                 'FIELDS_TO_COPY': [],
                 'FIELD_2': 'ogc_fid',
                 'INPUT': input_layer,
                 'INPUT_2': output_layer,
                 'METHOD': 1,
                 'OUTPUT': 'TEMPORARY_OUTPUT',
                 'PREFIX': ''
                 }
        return processing.run("native:joinattributestable", param)['OUTPUT']

    def filter_layer_fields(self, layer, wanted_fields=None):
        """
        Delete extra field to avoid having duplicate data in joining layer
        :param layer: QgsVectorLayer
        :param wanted_fields: those fields that you want to keep them in our layer
        :return: vertor layer : <class 'qgis._core.QgsVectorLayer'>
        """
        if wanted_fields is None:
            wanted_fields = ['ogc_fid', 'width', 'height', 'area']

        fields = layer.dataProvider().fields()
        unwanted_fields_indexes = list()

        for i in range(len(fields)):
            if fields[i].name() not in wanted_fields:
                unwanted_fields_indexes.append(i)

        self.delete_unwanted_fields(layer, unwanted_fields_indexes)
        return layer

    @staticmethod
    def field_calculator(layer, expression_list):
        """
        calculate the field values according to the expressions.
        :param layer: a vector layer created from QgsVectorLayer
        :param expression_list: a list or tuple of expressions or formula in QGIS expression format
        :return: ---
        """
        for item in expression_list:
            expression = QgsExpression(item[1])
            context = QgsExpressionContext()
            context.appendScopes(QgsExpressionContextUtils.globalProjectLayerScopes(layer))

            with edit(layer):
                for f in layer.getFeatures():
                    context.setFeature(f)
                    f[item[0]] = expression.evaluate(context)
                    layer.updateFeature(f)

    # Export
    @staticmethod
    def export_to_geopackage(layer, output_path_path, selected_value=False):
        """
        export files into *.gpkg format
        :param layer: a vector layer created from QgsVectorLayer
        :param output_path_path: str as output file path
        :param selected_value: True ==> export selected feature
        :return: --
        """
        QgsVectorFileWriter.writeAsVectorFormat(
            layer, output_path_path, "utf-8", layer.crs(), onlySelected=selected_value
        )

    @staticmethod
    def export_to_shapefile(layer, output_path_path, selected_value=False):
        """
        export files into *.shp format
        :param layer: a vector layer created from QgsVectorLayer
        :param output_path_path: str as output name
        :param selected_value: True ==> export selected feature
        :return: --
        """
        QgsVectorFileWriter.writeAsVectorFormat(
            layer=layer, fileName=output_path_path, fileEncoding="utf-8", destCRS=layer.crs(),
            driverName='ESRI Shapefile', onlySelected=selected_value,
            fieldValueConverter=QgsVectorFileWriter.FieldValueConverter()
        )

    def export_to_xlsx(self, layer, folder_path, output_file_name):
        """
        export files into *.xlsx format
        :param layer: a vector layer created from QgsVectorLayer
        :param folder_path: str as name of folder path
        :param output_file_name: str as name of output file name
        :return: --
        """
        print(f'{folder_path}/{self.date_en()}_{output_file_name}.xlsx')
        QgsVectorFileWriter.writeAsVectorFormat(
            layer, f'{folder_path}/{self.date_en()}_{output_file_name}.xlsx', "utf-8", layer.crs(), 'xlsx'
        )

    # Feature
    @staticmethod
    def get_layer_features_as_list(layer):
        """
        get all the features of one layer and store them in a list
        :param layer: a vector layer created from QgsVectorLayer
        :return: a list that conta
        """
        return list(layer.getFeatures())
