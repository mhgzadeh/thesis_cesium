"""
**********    copyright: (C) 2022 by die STEG Stadtentwicklung GmbH     **********

                Olgastraße 54                        Postfach 104341
                70182 Stuttgart                      70038 Stuttgart
                Telefon 0711/21068-0            Fax 0711/21068-112
                www.steg.de

**********************************************************************************
This is a custom script calculates energy demand and all the scenarios
created time: 29 April 2022
creator: Mohammad Hosseingholizadeh
edited date: 13 May 2022
editor name: Mohammad
"""

from .steg_gis import StegGIS


class EnergyDemand(StegGIS):
    """
    This class calculates the energy demand and all the scenarios
    """

    def __init__(self):
        super().__init__()
        self.layer_path = None
        self.project_folder_path = None
        self.geodata_folder_path = None
        self.building_energy = None
        self.expressions = None

    @staticmethod
    def __qe_con_f_as_str_generator(qe_san_type_name):
        """
        create a string for that is a factor of energy consumption Qe_Con_f
        :param qe_san_type_name: a string containing the name of Qe_San_Type
        :return: a str
        """
        return f""" CASE 
            WHEN "{qe_san_type_name}" > 0 and "{qe_san_type_name}" <= 100 THEN ((1 - 1)/(100 - 0))*("{qe_san_type_name}" - 0) + 1 
            WHEN "{qe_san_type_name}" > 100 and "{qe_san_type_name}" <= 200 THEN ((0.84 - 1)/(200 - 100))*("{qe_san_type_name}" - 100) + 1
            WHEN "{qe_san_type_name}" > 200 and "{qe_san_type_name}" <= 300 THEN ((0.70 - 0.84)/(300 - 200))*("{qe_san_type_name}" - 200) + 0.84
            WHEN "{qe_san_type_name}" > 300 and "{qe_san_type_name}" <= 400 THEN ((0.60 - 0.70)/(400 - 300))*("{qe_san_type_name}" - 300) + 0.70
            WHEN "{qe_san_type_name}" > 400 and "{qe_san_type_name}" <= 500 THEN ((0.50 - 0.60)/(500 - 400))*("{qe_san_type_name}" - 400) + 0.60
            ELSE 0.5
            END """

    @staticmethod
    def __change_layer_attribute_values(layer, feature, field_id, reference_layer_value):
        """
        change a value of one feature
        :param layer: QgsVectorLayer
        :param feature: one row of layer (one feature of layer like one polygon or one merged multipolygons)
        :param field_id: the id of feature. the value come from field calculator ($id)
        :param reference_layer_value: the value that the type should be same as the layer type. And it can be gotten
        from another layer
        :return: ---
        """
        layer.dataProvider().changeAttributeValues({feature.id(): {field_id: reference_layer_value}})

    def executor(self):
        """
        Calculate energy demand
        """
        main_building = self.duplicate_layer_from_source(self.layer_path, 'Felddaten ohne Kalkulation')
        temporary_building = self.create_temporary_layer(main_building, 'main_building')
        building_mmb = self.calculate_min_bounding_box(temporary_building)
        building_mbb_filtered = self.filter_layer_fields(building_mmb)
        self.building_energy = self.join_one_to_one(temporary_building, building_mbb_filtered)

        # Delete extra ogc_fid_2 produced in last step
        self.delete_unwanted_fields(self.building_energy, [self.find_field_index(self.building_energy, 'ogc_fid_2')])

        # Renaming width, height, and area  with 'Geb_Breit', 'Geb_Lang', 'Area_alle'
        old_field_name = ['width', 'height', 'area']
        new_field_name = ['Geb_Breit', 'Geb_Lang', 'Area_mmb']

        for i in range(len(old_field_name)):
            self.edit_field_name(
                self.building_energy, self.find_field_index(self.building_energy, old_field_name[i]),
                new_field_name[i]
            )

        # update the width of house
        # length of house is coming from the mmb and with is coming from area / length
        # features = list(self.building_energy.getFeatures())
        # print(features)
        # for feature in features:
        #     print(feature)
        #     feature["Geb_Breit"] = feature["Area_Real"] / feature["Geb_Lang"]
        #     self.__change_layer_attribute_values(self.building_energy, feature, feature["ID"], feature["Geb_Breit"])

        # Energy demand field name
        energy_field_name = [
            ('Area', 'real'),
            ('Geb_Traufe', 'int'), ('Geb_Giebel', 'int'), ('AWS_A', 'real'), ('Geb_Geshoss_H_li', 'real'),
            ('Geb_Traufe_H', 'real'), ('Da_DN_Bog', 'real'), ('Da_DN_Tan', 'real'), ('Da_DN_Cos', 'real'),
            ('Da_DN_Sin', 'real'), ('Da_H_Ges', 'real'), ('DG1_WFL_Verlust', 'real'), ('DG2_WFL_Verlust', 'real'),
            ('BGF', 'real'), ('NUF', 'real'), ('BRI', 'real'), ('Ve', 'real'), ('An', 'real'), ('KD_Dae_A', 'real'),
            ('AW_Traufe_A', 'real'), ('AW_Giebel_A', 'real'), ('AW_GS_A', 'real'), ('AW_Ges_A', 'real'),
            ('DaDae_A', 'real'), ('Fe_A', 'real'), ('A_Ges', 'real'), ('KD_U_BAK', 'real'), ('KD_U_Part', 'real'),
            ('AW_U_BAK', 'real'), ('AW_U_Part', 'real'), ('Fe_U_BAK', 'real'), ('Fe_U_Part', 'real'),
            ('DaDae_U_BAK', 'real'), ('DaDae_U_Part', 'real'), ('U_Wert_Ges', 'real'), ('Gt15_20', 'int'),
            ('HZ_NRG_Best', 'text'), ('HZ_NRG_Best_f', 'real'), ('G_Gl_N', 'real'), ('QW_Best', 'int'),
            ('QH_Best', 'int'), ('QH_Best_Spez', 'int'),
            ('Qve', 'int'), ('Qint', 'int'), ('Qsol', 'int'),
            ('Qe_Best', 'int'), ('Qe_Best_Spez', 'int'),
            ('Qe_Con_f', 'real'), ('Qe_Con', 'int'), ('Qe_Con_Spez', 'int'),
            ('CO2_Best', 'int'), ('CO2_Best_Spez', 'int'),
            ('HZ_NRG_San', 'text'), ('HZ_NRG_San_f', 'real'), ('G_Gl_N_San', 'real'),
            ('Qsol_San', 'int'), ('Qve_San', 'int'),
            ('QH_GEG', 'int'), ('QH_GEG_Spez', 'int'), ('QH_San_GEG', 'int'), ('Qe_San_GEG', 'int'),
            ('Qe_San_GEG_Spez', 'int'), ('Qe_San_GEG_Con_f', 'real'), ('Qe_San_GEG_Con', 'int'),
            ('Qe_San_GEG_Con_Spez', 'int'),
            ('CO2_GEG', 'int'), ('CO2_GEG_Spez', 'int'),
            ('QH_EH_100', 'int'), ('QH_100_Spez', 'int'), ('QH_San_100', 'int'), ('Qe_San_100', 'int'),
            ('Qe_San_100_Spez', 'int'), ('Qe_San_100_Con_f', 'real'), ('Qe_San_100_Con', 'int'),
            ('Qe_San_100_Con_Spez', 'int'),
            ('CO2_EH_100', 'int'), ('CO2_EH_100_Spez', 'int'),
            ('QH_EH_85', 'int'), ('QH_85_Spez', 'int'), ('QH_San_85', 'int'), ('Qe_San_85', 'int'),
            ('Qe_San_85_Spez', 'int'), ('Qe_San_85_Con_f', 'real'), ('Qe_San_85_Con', 'int'),
            ('Qe_San_85_Con_Spez', 'int'),
            ('CO2_EH_85', 'int'), ('CO2_EH_85_Spez', 'int'),
            ('QH_EH_70', 'int'), ('QH_70_Spez', 'int'), ('QH_San_70', 'int'), ('Qe_San_70', 'int'),
            ('Qe_San_70_Spez', 'int'), ('Qe_San_70_Con_f', 'real'), ('Qe_San_70_Con', 'int'),
            ('Qe_San_70_Con_Spez', 'int'),
            ('CO2_EH_70', 'int'), ('CO2_EH_70_Spez', 'int'),
            ('QH_EH_55', 'int'), ('QH_55_Spez', 'int'), ('QH_San_55', 'int'), ('Qe_San_55', 'int'),
            ('Qe_San_55_Spez', 'int'), ('Qe_San_55_Con_f', 'real'), ('Qe_San_55_Con', 'int'),
            ('Qe_San_55_Con_Spez', 'int'),
            ('CO2_EH_55', 'int'), ('CO2_EH_55_Spez', 'int'),
            ('QH_EH_40', 'int'), ('QH_40_Spez', 'int'), ('QH_San_40', 'int'), ('Qe_San_40', 'int'),
            ('Qe_San_40_Spez', 'int'), ('Qe_San_40_Con_f', 'real'), ('Qe_San_40_Con', 'int'),
            ('Qe_San_40_Con_Spez', 'int'),
            ('CO2_EH_40', 'int'), ('CO2_EH_40_Spez', 'int'),
        ]

        # Create energy field
        self.create_new_field(self.building_energy, energy_field_name)

        # Qgis expression (formaula needed for calculating energy demand) for each of created fields
        self.expressions = [
            ("Geb_Breit", '"Area_Real" / "Geb_Lang"'),
            ('Area', ''' if( "Geb_Nutz" LIKE 'Wohnen' OR 
                             "Geb_Nutz" LIKE 'Wohnen/Gewerbe' OR 
                             "Geb_Nutz" LIKE 'Wohnen/Landwitrschaft' OR
                             "Geb_Nutz" LIKE 'Wohnen/Keller' OR
                             "Geb_Nutz" LIKE 'Wohnen/Speicher' OR
                             "Geb_Nutz" LIKE 'öffentlich' OR
                             "Geb_Nutz" LIKE 'Kirche',  
                             "Area_Real" , NULL) '''),

            ('Geb_BJ', f''' if( "Geb_BJ" is NULL,
                                             CASE 
                                             WHEN  "Geb_BAK" =  'A'  THEN 1858
                                             WHEN  "Geb_BAK" =  'B'  THEN {1860 + int((1918 - 1860) / 2)} 
                                             WHEN  "Geb_BAK" =  'C'  THEN {1919 + int((1948 - 1919) / 2) + 1} 
                                             WHEN  "Geb_BAK" =  'D'  THEN {1949 + int((1957 - 1949) / 2)}
                                             WHEN  "Geb_BAK" =  'E'  THEN {1958 + int((1968 - 1958) / 2)}
                                             WHEN  "Geb_BAK" =  'F'  THEN {1969 + int((1978 - 1969) / 2) + 1} 
                                             WHEN  "Geb_BAK" =  'G'  THEN {1979 + int((1983 - 1979) / 2)} 
                                             WHEN  "Geb_BAK" =  'H'  THEN {1984 + int((1994 - 1984) / 2)} 
                                             WHEN  "Geb_BAK" =  'I'  THEN {1995 + int((2001 - 1995) / 2)} 
                                             WHEN  "Geb_BAK" =  'J'  THEN {2002 + int((2009 - 2002) / 2) + 1} 
                                             WHEN  "Geb_BAK" =  'K'  THEN {2010 + int((2015 - 2010) / 2) + 1} 
                                             WHEN  "Geb_BAK" =  'L'  THEN 2016                                  
                                             END,  
                                             "Geb_BJ" )'''),
            ('Fe_BJ', f''' if( "Fe_BJ" is NULL,
                                             CASE 
                                             WHEN  "Fe_BAK" =  'A'  THEN 1858
                                             WHEN  "Fe_BAK" =  'B'  THEN {1860 + int((1918 - 1860) / 2)} 
                                             WHEN  "Fe_BAK" =  'C'  THEN {1919 + int((1948 - 1919) / 2) + 1} 
                                             WHEN  "Fe_BAK" =  'D'  THEN {1949 + int((1957 - 1949) / 2)}
                                             WHEN  "Fe_BAK" =  'E'  THEN {1958 + int((1968 - 1958) / 2)}
                                             WHEN  "Fe_BAK" =  'F'  THEN {1969 + int((1978 - 1969) / 2) + 1} 
                                             WHEN  "Fe_BAK" =  'G'  THEN {1979 + int((1983 - 1979) / 2)} 
                                             WHEN  "Fe_BAK" =  'H'  THEN {1984 + int((1994 - 1984) / 2)} 
                                             WHEN  "Fe_BAK" =  'I'  THEN {1995 + int((2001 - 1995) / 2)} 
                                             WHEN  "Fe_BAK" =  'J'  THEN {2002 + int((2009 - 2002) / 2) + 1} 
                                             WHEN  "Fe_BAK" =  'K'  THEN {2010 + int((2015 - 2010) / 2) + 1} 
                                             WHEN  "Fe_BAK" =  'L'  THEN 2016                                  
                                             END,  
                                             "Fe_BJ" )'''),
            ('AW_San_BJ', f''' if( "AW_San_BJ" is NULL,
                                             CASE 
                                             WHEN  "AW_San_BAK" =  'A'  THEN 1858
                                             WHEN  "AW_San_BAK" =  'B'  THEN {1860 + int((1918 - 1860) / 2)} 
                                             WHEN  "AW_San_BAK" =  'C'  THEN {1919 + int((1948 - 1919) / 2) + 1} 
                                             WHEN  "AW_San_BAK" =  'D'  THEN {1949 + int((1957 - 1949) / 2)}
                                             WHEN  "AW_San_BAK" =  'E'  THEN {1958 + int((1968 - 1958) / 2)}
                                             WHEN  "AW_San_BAK" =  'F'  THEN {1969 + int((1978 - 1969) / 2) + 1} 
                                             WHEN  "AW_San_BAK" =  'G'  THEN {1979 + int((1983 - 1979) / 2)} 
                                             WHEN  "AW_San_BAK" =  'H'  THEN {1984 + int((1994 - 1984) / 2)} 
                                             WHEN  "AW_San_BAK" =  'I'  THEN {1995 + int((2001 - 1995) / 2)} 
                                             WHEN  "AW_San_BAK" =  'J'  THEN {2002 + int((2009 - 2002) / 2) + 1} 
                                             WHEN  "AW_San_BAK" =  'K'  THEN {2010 + int((2015 - 2010) / 2) + 1} 
                                             WHEN  "AW_San_BAK" =  'L'  THEN 2016                                  
                                             END,  
                                             "AW_San_BJ" )'''),
            ('Da_BJ', f''' if( "Da_BJ" is NULL,
                                             CASE 
                                             WHEN  "Da_BAK" =  'A'  THEN 1858
                                             WHEN  "Da_BAK" =  'B'  THEN {1860 + int((1918 - 1860) / 2)} 
                                             WHEN  "Da_BAK" =  'C'  THEN {1919 + int((1948 - 1919) / 2) + 1} 
                                             WHEN  "Da_BAK" =  'D'  THEN {1949 + int((1957 - 1949) / 2)}
                                             WHEN  "Da_BAK" =  'E'  THEN {1958 + int((1968 - 1958) / 2)}
                                             WHEN  "Da_BAK" =  'F'  THEN {1969 + int((1978 - 1969) / 2) + 1} 
                                             WHEN  "Da_BAK" =  'G'  THEN {1979 + int((1983 - 1979) / 2)} 
                                             WHEN  "Da_BAK" =  'H'  THEN {1984 + int((1994 - 1984) / 2)} 
                                             WHEN  "Da_BAK" =  'I'  THEN {1995 + int((2001 - 1995) / 2)} 
                                             WHEN  "Da_BAK" =  'J'  THEN {2002 + int((2009 - 2002) / 2) + 1} 
                                             WHEN  "Da_BAK" =  'K'  THEN {2010 + int((2015 - 2010) / 2) + 1} 
                                             WHEN  "Da_BAK" =  'L'  THEN 2016                                  
                                             END,  
                                             "Da_BJ" )'''),
            ('KD_BJ', f''' if( "KD_BJ" is NULL,
                                             CASE 
                                             WHEN  "KD_BAK" =  'A'  THEN 1858
                                             WHEN  "KD_BAK" =  'B'  THEN {1860 + int((1918 - 1860) / 2)} 
                                             WHEN  "KD_BAK" =  'C'  THEN {1919 + int((1948 - 1919) / 2) + 1} 
                                             WHEN  "KD_BAK" =  'D'  THEN {1949 + int((1957 - 1949) / 2)}
                                             WHEN  "KD_BAK" =  'E'  THEN {1958 + int((1968 - 1958) / 2)}
                                             WHEN  "KD_BAK" =  'F'  THEN {1969 + int((1978 - 1969) / 2) + 1} 
                                             WHEN  "KD_BAK" =  'G'  THEN {1979 + int((1983 - 1979) / 2)} 
                                             WHEN  "KD_BAK" =  'H'  THEN {1984 + int((1994 - 1984) / 2)} 
                                             WHEN  "KD_BAK" =  'I'  THEN {1995 + int((2001 - 1995) / 2)} 
                                             WHEN  "KD_BAK" =  'J'  THEN {2002 + int((2009 - 2002) / 2) + 1} 
                                             WHEN  "KD_BAK" =  'K'  THEN {2010 + int((2015 - 2010) / 2) + 1} 
                                             WHEN  "KD_BAK" =  'L'  THEN 2016                                  
                                             END,  
                                             "KD_BJ" )'''),
            ('Geb_Traufe',
             """(CASE WHEN "Geb_Lage" = 'Endgebäude Kontakt Traufe' or "Geb_Lage" = 'EndgebÃ¤ude Kontakt Traufe' THEN 1 WHEN "Geb_Lage" = 'Mittelgebäude Kontakt Traufe' or "Geb_Lage" = 'MittelgebÃ¤ude Kontakt Traufe' THEN 0 ELSE 2 END)"""),
            ('Geb_Giebel',
             """(CASE WHEN "Geb_Lage" = 'Endgebäude Kontakt Giebel' or "Geb_Lage" = 'EndgebÃ¤ude Kontakt Giebel' THEN 1 WHEN "Geb_Lage" = 'Mittelgebäude Kontakt Giebel' or "Geb_Lage" = 'MittelgebÃ¤ude Kontakt Giebel' THEN 0 ELSE 2 END)"""),
            # Geb_Sock is in cm
            ('AWS_A',
             '(("Geb_Lang" * "Geb_Traufe") + ("Geb_Breit" * "Geb_Giebel")) * (if("Geb_Sock" is null, 0, ("Geb_Sock"))/100)'
             ),

            ('Geb_Geshoss_H_li', '2.40'),  # in future as a variable

            ('Geb_Traufe_H',
             'if("Geb_Sock" is null, 0, "Geb_Sock")/100 + ("Geschosse" * ("Geb_Geshoss_H_li" + 0.2)) + if("Geb_knie" is null, 0, "Geb_knie")/100'),

            ('Da_DN_Bog',
             """radians(CASE WHEN "Da_Form" = 'Flachdach' THEN 0.000001 WHEN "DaNeigung" is null THEN 0.000001 ELSE "DaNeigung" END)"""),

            ('Da_DN_Tan', 'tan("Da_DN_Bog")'),

            ('Da_DN_Cos', 'cos("Da_DN_Bog")'),

            ('Da_DN_Sin', 'sin("Da_DN_Bog")'),

            ('Da_H_Ges', '"Geb_Breit" * 0.5 * "Da_DN_Tan"'),

            ('DG1_WFL_Verlust', '"Geb_Lang" * 2 * (1.5 - if("Geb_knie" is null, 0, "Geb_knie")/100) * "Da_DN_Cos"'),

            ('DG2_WFL_Verlust', '"Geb_Lang" * 2 * 1.5 * "Da_DN_Cos"'),

            # TODO 1:  Calculation of OGD_A
            # TODO 2:  if OGD_A - DG2_WFL_Verlust < 0 ==> 0
            # TODO 3:  Calculation BGF with DG1_NUF + DG2_NUF

            ('BGF',
             '''"Area" * "Geschosse" + (if ("Dachgescho" is null, 0, "Dachgescho") * "Area") - "DG1_WFL_Verlust"'''),

            ('NUF', '"Area" * 0.84 * ("Geschosse" + 1)'),

            # TODO 4 Check BRI 2022 05 02

            ('BRI',
             '("Area" * ("Geschosse" * ("Geb_Geshoss_H_li" + 0.2))) + "Area" * if("Geb_knie" is null, 0, "Geb_knie")/100 + ("Area" * "Da_H_Ges" * 0.5)'
             ),

            ('Ve', '"BRI"'),

            ('An', '0.32 * "Ve"'),

            ('KD_Dae_A', '"Area"'),

            ('AW_Traufe_A',
             '"Geb_Lang" * (("Geschosse" * "Geb_Geshoss_H_li" + 0.2) + if("Geb_knie" is null, 0, "Geb_knie")/100) * "Geb_Traufe"'
             ),

            ('AW_Giebel_A',
             '"Geb_Breit" * (("Geschosse" * "Geb_Geshoss_H_li" + 0.2) + if("Geb_knie" is null, 0, "Geb_knie")/100) * "Geb_Giebel"'
             ),

            ('AW_GS_A', '"Geb_Breit" * "Da_H_Ges" * 0.5 * "Geb_Giebel"'),

            ('AW_Ges_A', '"AW_Traufe_A" + "AW_Giebel_A" + "AW_GS_A"'),

            ('DaDae_A', '"Area" / "Da_DN_Cos"'),

            ('Fe_A', '"NUF" * 0.18'),

            ('A_Ges', '"KD_Dae_A" + ("AW_Ges_A" - "Fe_A") + "DaDae_A" + "Fe_A"'),

            ('KD_U_BAK',
             """CASE 
             WHEN "Geb_BAK" = 'A' THEN 1.6 WHEN "Geb_BAK" = 'B' THEN 1.6 WHEN "Geb_BAK" = 'C' THEN 1.6 
             WHEN "Geb_BAK" = 'D' THEN 2.3 WHEN "Geb_BAK" = 'E' THEN 1 WHEN "Geb_BAK" = 'F' THEN 1 
             WHEN "Geb_BAK" = 'G' THEN 0.8 WHEN "Geb_BAK" = 'H' THEN 0.6 WHEN "Geb_BAK" = 'I' THEN 0.6 
             WHEN "Geb_BAK" = 'J' THEN 0.30 WHEN "Geb_BAK" = 'K' THEN 0.25 WHEN "Geb_BAK" = 'L' THEN 0.20
             END"""),

            ('KD_U_Part', '("KD_Dae_A" / "A_Ges" * "KD_U_BAK")'),

            ('AW_U_BAK',
             """CASE 
             WHEN "AW_San_BAK" = 'A' THEN 1.5 WHEN "AW_San_BAK" = 'B' THEN 1.5 WHEN "AW_San_BAK" = 'C' THEN 1.5 
             WHEN "AW_San_BAK" = 'D' THEN 1.5 WHEN "AW_San_BAK" = 'E' THEN 1.4 WHEN "AW_San_BAK" = 'F' THEN 1 
             WHEN "AW_San_BAK" = 'G' THEN 0.8 WHEN "AW_San_BAK" = 'H' THEN 0.6 WHEN "AW_San_BAK" = 'I' THEN 0.5 
             WHEN "AW_San_BAK" = 'J' THEN 0.24 WHEN "AW_San_BAK" = 'K' THEN 0.24 WHEN "AW_San_BAK" = 'L' THEN 0.24
             WHEN "Geb_BAK" = 'A' THEN 1.5 WHEN "Geb_BAK" = 'B' THEN 1.5 WHEN "Geb_BAK" = 'C' THEN 1.5 
             WHEN "Geb_BAK" = 'D' THEN 1.5 WHEN "Geb_BAK" = 'E' THEN 1.4 WHEN "Geb_BAK" = 'F' THEN 1 
             WHEN "Geb_BAK" = 'G' THEN 0.8 WHEN "Geb_BAK" = 'H' THEN 0.6 WHEN "Geb_BAK" = 'I' THEN 0.5 
             WHEN "Geb_BAK" = 'J' THEN 0.24 WHEN "Geb_BAK" = 'K' THEN 0.24 WHEN "Geb_BAK" = 'L' THEN 0.24
             END"""),

            ('AW_U_Part', '("AW_Ges_A" / "A_Ges" * AW_U_BAK)'),

            ('Fe_U_BAK',
             """CASE 
             WHEN "Fe_BAK" = 'A' THEN 3.5 WHEN "Fe_BAK" = 'B' THEN 3.5 WHEN "Fe_BAK" = 'C' THEN 3.5 
             WHEN "Fe_BAK" = 'D' THEN 3.5 WHEN "Fe_BAK" = 'E' THEN 3.5 WHEN "Fe_BAK" = 'F' THEN 3.5 
             WHEN "Fe_BAK" = 'G' THEN 3.5 WHEN "Fe_BAK" = 'H' THEN 2.7 WHEN "Fe_BAK" = 'I' THEN 2.7 
             WHEN "Fe_BAK" = 'J' THEN 1.3 WHEN "Fe_BAK" = 'K' THEN 0.94 WHEN "Fe_BAK" = 'L' THEN 0.94 
             WHEN "Geb_BAK" = 'A' THEN 3.5 WHEN "Geb_BAK" = 'B' THEN 3.5 WHEN "Geb_BAK" = 'C' THEN 3.5 
             WHEN "Geb_BAK" = 'D' THEN 3.5 WHEN "Geb_BAK" = 'E' THEN 3.5 WHEN "Geb_BAK" = 'F' THEN 3.5 
             WHEN "Geb_BAK" = 'G' THEN 3.5 WHEN "Geb_BAK" = 'H' THEN 2.7 WHEN "Geb_BAK" = 'I' THEN 2.7 
             WHEN "Geb_BAK" = 'J' THEN 1.3 WHEN "Geb_BAK" = 'K' THEN 0.94 WHEN "Geb_BAK" = 'L' THEN 0.94 
             END"""),

            ('Fe_U_Part', '("Fe_A" / "A_Ges" * "Fe_U_BAK")'),

            ('DaDae_U_BAK',
             """CASE 
             WHEN "Da_BAK" = 'A' THEN 2.6 WHEN "Da_BAK" = 'B' THEN 2.6 WHEN "Da_BAK" = 'C' THEN 1.4 
             WHEN "Da_BAK" = 'D' THEN 1.4 WHEN "Da_BAK" = 'E' THEN 1.4 WHEN "Da_BAK" = 'F' THEN 0.8 
             WHEN "Da_BAK" = 'G' THEN 0.7 WHEN "Da_BAK" = 'H' THEN 0.5 WHEN "Da_BAK" = 'I' THEN 0.3
             WHEN "Da_BAK" = 'J' THEN 0.24 WHEN "Da_BAK" = 'K' THEN 0.14 WHEN "Da_BAK" = 'L' THEN 0.14
             WHEN "Geb_BAK" = 'A' THEN 2.6 WHEN "Geb_BAK" = 'B' THEN 2.6 WHEN "Geb_BAK" = 'C' THEN 1.4 
             WHEN "Geb_BAK" = 'D' THEN 1.4 WHEN "Geb_BAK" = 'E' THEN 1.4 WHEN "Geb_BAK" = 'F' THEN 0.8 
             WHEN "Geb_BAK" = 'G' THEN 0.7 WHEN "Geb_BAK" = 'H' THEN 0.5 WHEN "Geb_BAK" = 'I' THEN 0.3 
             WHEN "Geb_BAK" = 'J' THEN 0.24 WHEN "Geb_BAK" = 'K' THEN 0.14 WHEN "Geb_BAK" = 'L' THEN 0.14
             END"""),

            ('DaDae_U_Part', '("DaDae_A" / "A_Ges" * DaDae_U_BAK)'),

            # create variable for [U_TB] Thermal briding (possible Values could be 0.5, 0.1, 0.15, 0.4 ) in our Calculation we take 0.1)
            ('U_Wert_Ges', '"KD_U_Part" + "AW_U_Part" + "Fe_U_Part" + "DaDae_U_Part" + 0.10'),
            # U_TB = 0.10 ==> future as a variable, link to BAK class

            ('Gt15_20', '3780'),

            ('HZ_NRG_Best', "'Erdgas'"),
            ('HZ_NRG_Best_f', '0.245'),

            ('Qint', '0.024 * 3 * 222 * "An"'),

            ('G_Gl_N', """CASE 
            WHEN "Geb_BAK" = 'A' THEN 0.87 WHEN "Geb_BAK" = 'B' THEN 0.87 WHEN "Geb_BAK" = 'C' THEN 0.87 
            WHEN "Geb_BAK" = 'D' THEN 0.87 WHEN "Geb_BAK" = 'E' THEN 0.70 WHEN "Geb_BAK" = 'F' THEN 0.70 
            WHEN "Geb_BAK" = 'G' THEN 0.70 WHEN "Geb_BAK" = 'H' THEN 0.70 WHEN "Geb_BAK" = 'I' THEN 0.70 
            WHEN "Geb_BAK" = 'J' THEN 0.65 WHEN "Geb_BAK" = 'K' THEN 0.65 WHEN "Geb_BAK" = 'L'
            THEN 0.65 END"""),
            ('Qsol', '0.6 * (1 - 0.3) * 0.9 * "G_Gl_N" * (0.25 * "Fe_A") * (271 + 392 + 271 + 160)'),

            ('Qve', """
            CASE 
            WHEN "Geb_BAK" = 'J' or "Geb_BAK" = 'K' or "Geb_BAK" = 'L' THEN 0.15*(0.024 * 0.34 * (0.4 + 0.4) * "An" * "Geb_Geshoss_H_li" * "Gt15_20") 
            ELSE 0.024 * 0.34 * (0.4 + 0.4) * "An" * "Geb_Geshoss_H_li" * "Gt15_20"
            END
            """),

            ('QW_Best', '"NUF" * 12.5'),

            ('QH_Best',
             """
             CASE 
             WHEN "Geb_Nutz" = 'Kirche' THEN 0.33*("A_Ges" * "U_Wert_Ges" * 0.024 * 1.2 * "Gt15_20") 
             ELSE "A_Ges" * "U_Wert_Ges" * 0.024 * 1.2 * "Gt15_20"
             END
             """),
            ('QH_Best_Spez', '"QH_Best" / "An"'),
            ('Qe_Best', '"QW_Best" + "QH_Best" + "Qve" - "Qsol" - "Qint"'),
            ('Qe_Best_Spez', '"Qe_Best" / "An"'),
            # for 0 to 100, 1.1 changed to 1 because energy consumption should be equal or lower than energy demand
            ('Qe_Con_f', self.__qe_con_f_as_str_generator('Qe_Best_Spez')),

            ('Qe_Con', ' "Qe_Best" * "Qe_Con_f" '),
            ('Qe_Con_Spez', ' "Qe_Con" / "An" '),
            ('CO2_Best', '"Qe_Best" * "HZ_NRG_Best_f"'),
            ('CO2_Best_Spez', '"CO2_Best" / "An"'),

            ('HZ_NRG_San', "'Erdgas'"),
            ('HZ_NRG_San_f', '0.245'),

            ('G_Gl_N_San', '0.65'),
            ('Qsol_San', '0.6 * (1 - 0.3) * 0.9 * "G_Gl_N_San" * (0.25 * "Fe_A") * (271 + 392 + 271 + 160)'),
            ('Qve_San', '0.024 * 0.34 * (0.4 + 0.05) * "An" * "Geb_Geshoss_H_li" * Gt15_20'),

            ('QH_GEG', '0.33 * "A_Ges" * "Gt15_20" * 0.024'),  # 'GEG': 0.33 => from Sanierung Standard Table
            ('QH_GEG_Spez', '"QH_GEG" / "An"'),
            ('QH_San_GEG', 'if("Geb_BJ" < 1995, "QH_GEG" , "QH_Best")'),
            ('Qe_San_GEG', '"QW_Best" + "QH_San_GEG" + "Qve_San" - "Qsol_San" - "Qint"'),
            ('Qe_San_GEG_Spez', ' "Qe_San_GEG" / "An" '),
            ('Qe_San_GEG_Con_f', self.__qe_con_f_as_str_generator('Qe_San_GEG_Spez')),
            ('Qe_San_GEG_Con', ' "Qe_San_GEG" * "Qe_San_GEG_Con_f" '),
            ('Qe_San_GEG_Con_Spez', ' "Qe_San_GEG_Con" / "An" '),
            ('CO2_GEG', '"Qe_San_GEG" * "HZ_NRG_San_f"'),
            ('CO2_GEG_Spez', '"CO2_GEG" / "An"'),

            ('QH_EH_100', '0.44 * "A_Ges" * "Gt15_20" * 0.024'),  # 'EH_100': 0.44 => from Sanierung Standard Table
            ('QH_100_Spez', '"QH_EH_100" / "An"'),
            ('QH_San_100', 'if("Geb_BJ" < 1995, "QH_EH_100" , "QH_Best")'),
            ('Qe_San_100', '"QW_Best" + "QH_San_100" + "Qve_San" - "Qsol_San" - "Qint"'),
            ('Qe_San_100_Spez', ' "Qe_San_100" / "An" '),
            ('Qe_San_100_Con_f', self.__qe_con_f_as_str_generator('Qe_San_100_Spez')),
            ('Qe_San_100_Con', ' "Qe_San_100" * "Qe_San_100_Con_f" '),
            ('Qe_San_100_Con_Spez', ' "Qe_San_100_Con" / "An" '),
            ('CO2_EH_100', '"Qe_San_100" * "HZ_NRG_San_f"'),
            ('CO2_EH_100_Spez', '"CO2_EH_100" / "An"'),

            ('QH_EH_85', '0.25 * "A_Ges" * "Gt15_20" * 0.024'),  # 'EH_85': 0.25 => from Sanierung Standard Table
            ('QH_85_Spez', '"QH_EH_85" / "An"'),
            ('QH_San_85', 'if("Geb_BJ" < 1995, "QH_EH_85", "QH_Best")'),
            ('Qe_San_85', '"QW_Best" + "QH_San_85" + "Qve_San" - "Qsol_San" - "Qint"'),
            ('Qe_San_85_Spez', ' "Qe_San_85" / "An" '),
            ('Qe_San_85_Con_f', self.__qe_con_f_as_str_generator('Qe_San_85_Spez')),
            ('Qe_San_85_Con', ' "Qe_San_85" * "Qe_San_85_Con_f" '),
            ('Qe_San_85_Con_Spez', ' "Qe_San_85_Con" / "An" '),
            ('CO2_EH_85', '"Qe_San_85" * "HZ_NRG_San_f"'),
            ('CO2_EH_85_Spez', '"CO2_EH_85" / "An"'),

            ('QH_EH_70', '0.25 * "A_Ges" * "Gt15_20" * 0.024'),  # 'EH_70': 0.25 => from Sanierung Standard Table
            ('QH_70_Spez', '"QH_EH_70" / "An"'),
            ('QH_San_70', 'if("Geb_BJ" < 1995, "QH_EH_70", "QH_Best")'),
            ('Qe_San_70', '"QW_Best" + "QH_San_70" + "Qve_San" - "Qsol_San" - "Qint"'),
            ('Qe_San_70_Spez', ' "Qe_San_70" / "An" '),
            ('Qe_San_70_Con_f', self.__qe_con_f_as_str_generator('Qe_San_70_Spez')),
            ('Qe_San_70_Con', ' "Qe_San_70" * "Qe_San_70_Con_f" '),
            ('Qe_San_70_Con_Spez', ' "Qe_San_70_Con" / "An" '),
            ('CO2_EH_70', '"Qe_San_70" * "HZ_NRG_San_f"'),
            ('CO2_EH_70_Spez', '"CO2_EH_70" / "An"'),

            ('QH_EH_55', '0.2 * "A_Ges" * "Gt15_20" * 0.024'),  # 'EH_55': 0.2 => from Sanierung Standard Table
            ('QH_55_Spez', '"QH_EH_55" / "An"'),
            ('QH_San_55', 'if("Geb_BJ" < 1995, "QH_EH_55", "QH_Best")'),
            ('Qe_San_55', '"QW_Best" + "QH_San_55" + "Qve_San" - "Qsol_San" - "Qint"'),
            ('Qe_San_55_Spez', ' "Qe_San_55" / "An" '),
            ('Qe_San_55_Con_f', self.__qe_con_f_as_str_generator('Qe_San_55_Spez')),
            ('Qe_San_55_Con', ' "Qe_San_55" * "Qe_San_55_Con_f" '),
            ('Qe_San_55_Con_Spez', ' "Qe_San_55_Con" / "An" '),
            ('CO2_EH_55', '"Qe_San_55" * "HZ_NRG_San_f"'),
            ('CO2_EH_55_Spez', '"CO2_EH_55" / "An"'),

            ('QH_EH_40', '0.16 * "A_Ges" * "Gt15_20" * 0.024'),  # 'EH_40': 0.16 => from Sanierung Standard Table
            ('QH_40_Spez', '"QH_EH_40" / "An"'),
            ('QH_San_40', 'if("Geb_BJ" < 1995, "QH_EH_40", "QH_Best")'),
            ('Qe_San_40', '"QW_Best" + "QH_San_40" + "Qve_San" - "Qsol_San" - "Qint"'),
            ('Qe_San_40_Spez', ' "Qe_San_40" / "An" '),
            ('Qe_San_40_Con_f', self.__qe_con_f_as_str_generator('Qe_San_40_Spez')),
            ('Qe_San_40_Con', ' "Qe_San_40" * "Qe_San_40_Con_f" '),
            ('Qe_San_40_Con_Spez', ' "Qe_San_40_Con" / "An" '),
            ('CO2_EH_40', '"Qe_San_40" * "HZ_NRG_San_f"'),
            ('CO2_EH_40_Spez', '"CO2_EH_40" / "An"'),
        ]

