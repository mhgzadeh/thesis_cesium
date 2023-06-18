"""
update city_gml files
"""

from bs4 import BeautifulSoup
from data_path import data_path

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


def get_record_from_db(db_info, schema_name_main, view_name_main, gml_id):
    try:
        # create connection and cursor for main database
        conn_db_main = database_connector(db_info)
        cur_db_main = conn_db_main.cursor(cursor_factory=DictCursor)

        select_script = f''' 
           SELECT gml_id, qe_san_100, qe_san_70, qe_san_55, qe_san_40, co2_40, co2_100,  pv
           FROM "{schema_name_main}".{view_name_main}
           WHERE gml_id = '{gml_id}';  
           '''

        cur_db_main.execute(select_script)
        records = cur_db_main.fetchall()
        return records[0]

    except Exception as error:
        print(error)
        return False


def add_new_tag_to_gml(value, soup, tag_name, building):
    """
    add new values to xml file
    :param value: data value from db
    :param soup: root of xml
    :param tag_name: new tag name
    :param building: a part of root
    :return: ---
    """
    new_tag_value = f'<gen:value>{value}</gen:value>'
    string_attribute_tag = soup.new_tag('gen:stringAttribute')
    string_attribute_tag['name'] = tag_name
    string_attribute_tag.append(new_tag_value)
    building.insert(0, string_attribute_tag)


if __name__ == '__main__':
    schema_name_main = 'public'
    view_name_main = 'join_alkis_citymodel_cesium'

    with open(data_path['cesium_burgrieden_0_2'], 'r', encoding='UTF-8') as city_gml_file:
        soup = BeautifulSoup(city_gml_file, 'xml')

    for building_part in soup.find_all('bldg:Building'):
        if "gml:id" in building_part.attrs:
            gml_id = 'L'.join(building_part.attrs["gml:id"].split('_'))
            print(gml_id)
            record = get_record_from_db(DB_MAIN, schema_name_main, view_name_main, gml_id)
            print(record)
            city_gml_tags = {
                'qe_san_100': 'qe_san_100',
                'qe_san_70': 'qe_san_70',
                'qe_san_55': 'qe_san_55',
                'qe_san_40': 'qe_san_40',
                'co2_100': 'co2_100',
                'co2_40': 'co2_40',
                'pv': 'pv',
            }
            if record:
                for key in city_gml_tags.keys():
                    print(f'{record[key]}, {city_gml_tags[key]}')
                    add_new_tag_to_gml(record[key], soup, city_gml_tags[key], building_part)
                    for bounded_by in building_part.find_all('bldg:boundedBy'):
                        add_new_tag_to_gml(record[key], soup, city_gml_tags[key], bounded_by)

    # output = soup.prettify("utf-8")
    output = str(soup.prettify(formatter=None))
    with open(data_path["cesium_burgrieden_0_2_new"], "w") as file:
        file.write(output)
