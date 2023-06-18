import json
from data_path import data_path
from psycopg2 import connect
from psycopg2.extras import DictCursor

from datetime import datetime

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
    """ ************* Getting Simstadt result **************** """
    with open(data_path['simstadt_result_all']) as json_file:
        json_records = json.load(json_file)

    simstadt_values = []

    count = 0
    for building in json_records["buildings"]:
        simstadt_dic = {
            "gml_id": None,
            "project_id": None,
            "demand": None,
            "volume": None,
            "infiltration_rate": None,
            "average_storey_height": None,
            "heated_volume": None,
            "heated_area": None,
            "surface_to_volume_ratio": None,
            "total_surface_area": None,
            "usage_hours_per_day": None,
            "usage_days_per_year": None,
            "healthy_air_change_rate": None,
            "occupant_number": None,
            "dhw_demand": None,
            "average_intern_gains": None,
            "heating_setback_temperature": None,
            "heating_set_point_temperature": None,
            "created_time": None
        }
        if 'monthlyHeating' in building["parts"][0]["attributes"].keys():
            count += 1
            # print(building)
            simstadt_dic['project_id'] = 1000
            simstadt_dic['created_time'] = datetime.now()
            simstadt_dic['total_surface_area'] = 0

            print(building["parts"][0]["attributes"])
            print(building["parts"][0]["usageZones"][0]["attributes"])

            if 'id' in building["parts"][0].keys():
                simstadt_dic['gml_id'] = building["parts"][0]["id"]
            if 'monthlyHeating' in building["parts"][0]["attributes"].keys():
                simstadt_dic['demand'] = int(sum(building["parts"][0]["attributes"]["monthlyHeating"]))
            if 'volume' in building["parts"][0]["attributes"].keys():
                simstadt_dic['volume'] = building["parts"][0]["attributes"]["volume"]
            if 'infiltrationRate' in building["parts"][0]["attributes"].keys():
                simstadt_dic['infiltration_rate'] = building["parts"][0]["attributes"]["infiltrationRate"]
            if 'averageStoreyHeight' in building["parts"][0]["attributes"].keys():
                simstadt_dic['average_storey_height'] = building["parts"][0]["attributes"]["averageStoreyHeight"]
            if 'heatedVolume' in building["parts"][0]["attributes"].keys():
                simstadt_dic['heated_volume'] = building["parts"][0]["attributes"]["heatedVolume"]
            if 'heatedArea' in building["parts"][0]["attributes"].keys():
                simstadt_dic['heated_area'] = building["parts"][0]["attributes"]["heatedArea"]
            if 'surfaceToVolumeRatio' in building["parts"][0]["attributes"].keys():
                simstadt_dic['surface_to_volume_ratio'] = building["parts"][0]["attributes"]["surfaceToVolumeRatio"]

            if 'usageHoursPerDay' in building["parts"][0]["usageZones"][0]["attributes"].keys():
                simstadt_dic['usage_hours_per_day'] = building["parts"][0]["usageZones"][0]["attributes"][
                    "usageHoursPerDay"]

            if 'usageDaysPerYear' in building["parts"][0]["usageZones"][0]["attributes"].keys():
                simstadt_dic['usage_days_per_year'] = building["parts"][0]["usageZones"][0]["attributes"][
                    "usageDaysPerYear"]

            if 'healthyAirChangeRate' in building["parts"][0]["usageZones"][0]["attributes"].keys():
                simstadt_dic['healthy_air_change_rate'] = \
                    building["parts"][0]["usageZones"][0]["attributes"]["healthyAirChangeRate"]

            if 'occupantNumber' in building["parts"][0]["usageZones"][0]["attributes"].keys():
                simstadt_dic['occupant_number'] = building["parts"][0]["usageZones"][0]["attributes"]["occupantNumber"]

            if 'dhwDemand' in building["parts"][0]["usageZones"][0]["attributes"].keys():
                simstadt_dic['dhw_demand'] = building["parts"][0]["usageZones"][0]["attributes"]["dhwDemand"]

            if 'averageInternGains' in building["parts"][0]["usageZones"][0]["attributes"].keys():
                simstadt_dic['average_intern_gains'] = \
                    building["parts"][0]["usageZones"][0]["attributes"]["averageInternGains"]

            if 'heatingSetbackTemperature' in building["parts"][0]["usageZones"][0]["attributes"].keys():
                simstadt_dic['heating_setback_temperature'] = \
                    building["parts"][0]["usageZones"][0]["attributes"]["heatingSetbackTemperature"]

            if 'heatingSetpointTemperature' in building["parts"][0]["usageZones"][0]["attributes"].keys():
                simstadt_dic['heating_set_point_temperature'] = \
                    building["parts"][0]["usageZones"][0]["attributes"]["heatingSetpointTemperature"]

            simstadt_values.append(simstadt_dic)
            # print(simstadt_values[-1])

    # print(building)
    # print(simstadt_values)
    # print(len(simstadt_values))
    """ ************* Update database with energy alkis calculations **************** """
    if input('Update database Y/n :  ') == 'y':
        print('+ = /' * 400)
        schema_name_main = 'public'
        conn_db_main = None
        cur_db_main = None

        try:
            # create connection and cursor for main database
            conn_db_main = database_connector(DB_MAIN)
            cur_db_main = conn_db_main.cursor(cursor_factory=DictCursor)
            print(cur_db_main)

            simstadt_dic = {
                'id': None,
                "gml_id": None,
                "project_id": None,
                "demand": None,
                "volume": None,
                "infiltration_rate": None,
                "average_storey_height": None,
                "heated_volume": None,
                "heated_area": None,
                "surface_to_volume_ratio": None,
                "total_surface_area": None,
                "usage_hours_per_day": None,
                "usage_days_per_year": None,
                "healthy_air_change_rate": None,
                "occupant_number": None,
                "dhw_demand": None,
                "average_intern_gains": None,
                "heating_setback_temperature": None,
                "heating_set_point_temperature": None,
                "created_time": None,
                "modified_time": None
            }
            print(', '.join(simstadt_dic.keys()))

            insert_table_main = 'energy_citymodel'
            # insert_values_main = ("gml_id", "demand", "created_time", "modified_time")
            insert_script_main = f'''
            INSERT INTO 
            "{schema_name_main}".{insert_table_main}({', '.join(simstadt_dic.keys())}) 
            VALUES ({("%s, " * len(simstadt_dic.keys()))[:-2]})
            on conflict do nothing;
            '''
            print(insert_script_main)

            count = 0
            for value in simstadt_values:
                count += 1
                insert_values = (
                    count,
                    value["gml_id"],
                    value["project_id"],
                    value["demand"],
                    value["volume"],
                    value["infiltration_rate"],
                    value["average_storey_height"],
                    value["heated_volume"],
                    value["heated_area"],
                    value["surface_to_volume_ratio"],
                    value["total_surface_area"],
                    value["usage_hours_per_day"],
                    value["usage_days_per_year"],
                    value["healthy_air_change_rate"],
                    value["occupant_number"],
                    value["dhw_demand"],
                    value["average_intern_gains"],
                    value["heating_setback_temperature"],
                    value["heating_set_point_temperature"],
                    value["created_time"],
                    value["created_time"]
                )
                print(insert_values)
                cur_db_main.execute(insert_script_main, insert_values)

            conn_db_main.commit()
            print('Successfully finished')
        except Exception as error:
            print(error)
        finally:
            if cur_db_main is not None:
                cur_db_main.close()
            if conn_db_main is not None:
                conn_db_main.close()
