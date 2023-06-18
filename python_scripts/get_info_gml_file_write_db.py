"""
write ground surface, roof surface, and wall surface to database
"""

from bs4 import BeautifulSoup
from data_path import data_path
from json import dumps

from psycopg2 import connect
from psycopg2.extras import DictCursor

from local_database_info import DB_MAIN


def database_connector(database_info_dic):
    """
    create postgres database connection using psycopg2 library
    """
    connection = connect(
        host=database_info_dic['HOST'],
        port=database_info_dic['PORT'],
        dbname=database_info_dic['NAME'],
        user=database_info_dic['USER'],
        password=database_info_dic['PASS']
    )
    return connection


if __name__ == '__main__':

    with open(data_path['burgrieden'], 'r', encoding='UTF-8') as city_gml_file:
        soup = BeautifulSoup(city_gml_file, 'xml')

    buildings = {
        "municipality_name": 'BW_Burgrieden',
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
        print(f'{building["gml_id"]} stored successfully !!!!!!')

    output = soup.prettify("utf-8")
    with open(data_path["folder"] + 'mohammad.gml', "wb") as file:
        file.write(output)

    print(dumps(buildings, sort_keys=True, indent=4))

    """ ************* Database connection **************** """

    if input('Continue ???   :') == 'y':
        conn_db_main = None
        cur_db_main = None
        building_db_vars = [
            ('roofsurface', "roof_surface_wkt"),
            ('wallsurface', "wall_surface_wkt"),
            ('groundsurface', "ground_surface_wkt")
        ]

        try:
            # create connection and cursor for main database
            conn_db_main = database_connector(DB_MAIN)
            cur_db_main = conn_db_main.cursor(cursor_factory=DictCursor)

            for building_db_var in building_db_vars:
                insert_script_main = f'''
                    INSERT INTO
                    public.city_model_{building_db_var[0]}(gml_id, count, geometry, building_id)
                    VALUES (%s, %s, ST_GeomFromText(%s, 25832), %s)
                    on conflict do nothing;
                    '''

                for building in buildings["buildings"]:
                    if building[building_db_var[1]]["count"] != 0:
                        for num, feature in enumerate(building[building_db_var[1]]["coordinate"]):
                            insert_values = (
                                f'{building["gml_id"]}_{num}_{building_db_var[0]}',
                                building[building_db_var[1]]["count"],
                                feature,
                                building["gml_id"]
                            )
                            print(insert_values)
                            cur_db_main.execute(insert_script_main, insert_values)

            insert_object_model = f'''
                INSERT INTO public.city_model_building(
                geometry)
                VALUES (ST_GeomFromText(%s, 25832));
            '''

            for building in buildings["buildings"]:
                if building["building_wkt"]["count"] != 0:
                    for num, feature in enumerate(building["building_wkt"]["coordinate"]):
                        insert_values_ = (
                            feature,
                        )
                        print(insert_values_)
                        cur_db_main.execute(insert_object_model, insert_values_)
            conn_db_main.commit()

        except Exception as error:
            print(error)
        finally:
            if cur_db_main is not None:
                cur_db_main.close()
            if conn_db_main is not None:
                conn_db_main.close()
