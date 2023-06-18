"""
**********    copyright: (C) 2022 by die STEG Stadtentwicklung GmbH     **********

                Olgastraße 54                        Postfach 104341
                70182 Stuttgart                      70038 Stuttgart
                Telefon 0711/21068-0            Fax 0711/21068-112
                www.steg.de

**********************************************************************************
This is a custom script categorized energy demand and all the scenarios with
their specific symbologies
created time: 02 May 2022
creator: Mohammad Hosseingholizadeh
edited date:
editor name:
"""

from .steg_symbology import StegSymbology
from .steg_gis import StegGIS
from .steg_static_file_path import STEG_SYMBOLOGY_PATH


class EnergyCategory(StegGIS, StegSymbology):
    """
        This class should not use as a single object.
        It contains all the neccessary functionlities using for energy categories symbology
    """

    def __init__(self):
        super().__init__()
        self.building_energy_output_path = ''
        self.script_folder_path = self.get_script_path_plugin()

    def solar_potential(self):
        """Generate Solar potential group in layer section of Qgis with specific symbology"""

        if self.find_group('Solar Potential'):
            self.remove_group('Solar Potential')

        # Solarthermie vorhanden
        building_st_vorh = self.duplicate_layer_from_source(self.building_energy_output_path, 'Solarthermie')
        symbol_path_st_vorh = f"{self.script_folder_path}{STEG_SYMBOLOGY_PATH['solarthermie']}"
        self.qml_loader(building_st_vorh, symbol_path_st_vorh)

        # Photovoltaik vorhanden
        building_pv_vorh = self.duplicate_layer_from_source(self.building_energy_output_path, 'Photovoltaik')
        symbol_path_pv_vorth = f"{self.script_folder_path}{STEG_SYMBOLOGY_PATH['photovoltaik']}"
        self.qml_loader(building_pv_vorh, symbol_path_pv_vorth)
        self.create_group_plus_add_layers('Solar Potential', [building_st_vorh, building_pv_vorh])

    def renoverted_building_component(self):
        """
        Generate renoverted building component (Bauteile saniert) group in layer section of Qgis with specific symbology
        """

        if self.find_group('Bauteile saniert'):
            self.remove_group('Bauteile saniert')

        # Fenster
        building_fe_bj_gt_2002 = self.duplicate_layer_from_source(self.building_energy_output_path, 'Fenster')
        symbol_path_fe_bj_gt_2002 = f"{self.script_folder_path}{STEG_SYMBOLOGY_PATH['fenster']}"
        self.qml_loader(building_fe_bj_gt_2002, symbol_path_fe_bj_gt_2002)

        # Außenwände
        building_aw_san_bj_gt_2002 = self.duplicate_layer_from_source(self.building_energy_output_path, 'Außenwände')
        symbol_path_aw_san_bj_gt_2002 = f"{self.script_folder_path}{STEG_SYMBOLOGY_PATH['aussenwaende']}"
        self.qml_loader(building_aw_san_bj_gt_2002, symbol_path_aw_san_bj_gt_2002)

        # Dach
        building_da_bj_gt_2002 = self.duplicate_layer_from_source(self.building_energy_output_path, 'Dach')
        symbol_path_da_bj_gt_2002 = f"{self.script_folder_path}{STEG_SYMBOLOGY_PATH['dach']}"
        self.qml_loader(building_da_bj_gt_2002, symbol_path_da_bj_gt_2002)

        # Kellerdecke
        building_kd_bj_gt_2002 = self.duplicate_layer_from_source(self.building_energy_output_path, 'Kellerdecke')
        symbol_path_kd_bj_gt_2002 = f"{self.script_folder_path}{STEG_SYMBOLOGY_PATH['kellerdecke']}"
        self.qml_loader(building_kd_bj_gt_2002, symbol_path_kd_bj_gt_2002)

        self.create_group_plus_add_layers(
            'Bauteile saniert',
            [building_fe_bj_gt_2002, building_aw_san_bj_gt_2002, building_da_bj_gt_2002, building_kd_bj_gt_2002]
        )

    def heating(self):
        """Generate heating (Heizung) group in layer section of Qgis with specific symbology"""

        if self.find_group('Heizung'):
            self.remove_group('Heizung')

        # Heitzungsanlage
        building_hz_tech_eq_brennwert = self.duplicate_layer_from_source(self.building_energy_output_path, 'Heitzungsanlage')
        symbol_path_heating = f"{self.script_folder_path}{STEG_SYMBOLOGY_PATH['heitzungsanlage']}"
        self.qml_loader(building_hz_tech_eq_brennwert, symbol_path_heating)
        self.create_group_plus_add_layers('Heizung', [building_hz_tech_eq_brennwert])

    def energy_demand(self):
        """Generate energy demand (Energiebedarf) group in layer section of Qgis with specific symbology"""

        if self.find_group('Energiebedarf'):
            self.remove_group('Energiebedarf')

        # Baualtersklassen (BAK)
        building_bak = self.duplicate_layer_from_source(self.building_energy_output_path, 'Baualtersklassen')
        symbol_path_bak = f"{self.script_folder_path}{STEG_SYMBOLOGY_PATH['baualtersklassen']}"
        self.qml_loader(building_bak, symbol_path_bak)

        # Energiebedarf absolut (kWh/a)
        building_qe_best = self.duplicate_layer_from_source(
            self.building_energy_output_path, 'Energiebedarf absolut [kWh/a]'
        )
        symbol_path_qe_best = f"{self.script_folder_path}{STEG_SYMBOLOGY_PATH['energiebedarf_absolut']}"
        self.qml_loader(building_qe_best, symbol_path_qe_best)

        # Energieverbrauch (kWh/a)
        building_qe_con = self.duplicate_layer_from_source(
            self.building_energy_output_path, 'Energieverbrauch [kWh/a]'
        )
        symbol_path_qe_con = f"{self.script_folder_path}{STEG_SYMBOLOGY_PATH['energieverbrauch']}"
        self.qml_loader(building_qe_con, symbol_path_qe_con)

        # Energiebedarf spezifisch (kWh/m²a)
        building_qe_best_spez = self.duplicate_layer_from_source(
            self.building_energy_output_path, 'Energiebedarf spezifisch [kWh/m²a]'
        )
        symbol_path_qe_best_spez = f"{self.script_folder_path}{STEG_SYMBOLOGY_PATH['energiebedarf_spezifisch']}"
        self.qml_loader(building_qe_best_spez, symbol_path_qe_best_spez)

        self.create_group_plus_add_layers(
            'Energiebedarf', [building_bak, building_qe_best, building_qe_con, building_qe_best_spez]
        )
