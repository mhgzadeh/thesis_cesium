"""
**********    copyright: (C) 2022 by die STEG Stadtentwicklung GmbH     **********

                Olgastraße 54                        Postfach 104341
                70182 Stuttgart                      70038 Stuttgart
                Telefon 0711/21068-0            Fax 0711/21068-112
                www.steg.de

**********************************************************************************
This script contains the CityGMLExtraction class and all the required libraries
created time: 12 December 2022
creator: Mohammad Hosseingholizadeh
edited date:
editor name:
"""
from abc import ABC
from bs4 import BeautifulSoup


class CityGMLExtraction(ABC):
    """
    extract city gml file and store them into database
    """

    def __init__(self):
        super().__init__()

    @staticmethod
    def generate_soup_from_gml(city_gml_file_path):
        """
        creating soup for gml extraction

        :param city_gml_file_path: the path of city gml file
        :return: soup which is extracted from beautifulsoup4
        """
        with open(city_gml_file_path, 'r', encoding='UTF-8') as city_gml_file:
            soup = BeautifulSoup(city_gml_file, 'xml')
        return soup

    @staticmethod
    def extract_city_gml_file(soup, municipality_name):
        """
        extract city gml objects such as gml_id, address, ground surface, wall surface and roof surface to store in the
        buildings' dictionary.
        This dictionary will be used to store all the data to the database
        """

        buildings = {
            "municipality_name": f'{municipality_name}',
            "count": 0,
            "EPSG": None,
            "buildings": []
        }

        building_components = [
            ('bldg:GroundSurface', "ground_surface_wkt"),
            ('bldg:WallSurface', "wall_surface_wkt"),
            ('bldg:RoofSurface', "roof_surface_wkt")
        ]

        if soup.find('gml:Envelope').attrs["srsName"]:
            buildings["EPSG"] = soup.find('gml:Envelope').attrs["srsName"].split(':')[-1]
        else:
            print("ERROR: EPSG is not available in Envelope tag")

        for num, building_part in enumerate(soup.find_all('bldg:Building')):
            buildings["count"] += 1
            building = {
                "gml_id": None,
                "address": None,
                "ground_surface_wkt": {"count": 0, "coordinate": []},
                "wall_surface_wkt": {"count": 0, "coordinate": []},
                "roof_surface_wkt": {"count": 0, "coordinate": []},
                "building_wkt": {"count": 0, "coordinate": []}
            }

            if "gml:id" in building_part.attrs:
                building['gml_id'] = building_part.attrs["gml:id"]
            else:
                building['gml_id'] = f'{num}_{buildings["municipality_name"]}'
                building_part['my_gml'] = building['gml_id']

            for building_component in building_components:
                for surface_tag in building_part.find_all(building_component[0]):
                    building[building_component[1]]["count"] += 1
                    building["building_wkt"]["count"] += 1
                    coordinates = surface_tag.find('gml:posList').text.split(' ')
                    ground_coordinates = [coord for coord in coordinates if len(coord) > 2]
                    geom = ''
                    geom_z = ''
                    for i in range(0, len(ground_coordinates), 3):
                        geom_z += f"{' '.join(ground_coordinates[i:i + 3])},"
                        geom += f"{' '.join(ground_coordinates[i:i + 2])},"
                    building["building_wkt"]["coordinate"].append(f"POLYGON Z (({geom_z[:-2]}))")
                    building[building_component[1]]["coordinate"].append(f"POLYGON(({geom[:-1]}))")

            buildings["buildings"].append(building)

            if num + 1 == len(soup.find_all('bldg:Building')):
                yield building, buildings, soup, False
            else:
                yield building, True

    @staticmethod
    def export_soup_to_gml(city_gml_output_file_name, soup_output):
        """
        export soup to the new gml file with new gml id
        this file should be temporary and should not be used for Cesium

        :param city_gml_output_file_name: file path for tmp gml file with new gml id
        :param soup_output: soup that should be store into the tmp gml file
        :return: --
        """
        with open(city_gml_output_file_name, "wb") as export_file:
            export_file.write(soup_output)
