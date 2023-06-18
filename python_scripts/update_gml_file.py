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


def get_record_from_db(db_info, schema_name_main, view_name_main, my_gml):
    try:
        # create connection and cursor for main database
        conn_db_main = database_connector(db_info)
        cur_db_main = conn_db_main.cursor(cursor_factory=DictCursor)

        select_script = f''' 
           SELECT my_gml, gml_id, function, year 
           FROM "{schema_name_main}".{view_name_main} 
           WHERE my_gml = '{my_gml}_0_groundsurface'; 
           '''

        cur_db_main.execute(select_script)
        records = cur_db_main.fetchall()
        return records[0]

    except Exception as error:
        print(error)
        return False


if __name__ == '__main__':
    schema_name_main = 'public'
    view_name_main = 'join_alkis_city_model'

    with open(data_path['my_burgrieden'], 'r', encoding='UTF-8') as city_gml_file:
        soup = BeautifulSoup(city_gml_file, 'xml')

    for building_part in soup.find_all('bldg:Building'):
        if "my_gml" in building_part.attrs:
            my_gml = building_part.attrs["my_gml"]
            print(my_gml)
            record = get_record_from_db(DB_MAIN, schema_name_main, view_name_main, my_gml)
            if record:
                building_part.attrs["gml:id"] = record['gml_id']
                del building_part['my_gml']

                function_tag = soup.new_tag('bldg:function')
                year_tag = soup.new_tag('bldg:yearOfConstruction')
                function_tag.string = record['function'] if record['function'] is not None else ''
                year_tag.string = record['year'] if record['year'] is not None else ''
                building_part.append(function_tag)
                building_part.append(year_tag)

    # output = soup.prettify("utf-8")
    output = str(soup).replace('\n', '').strip()
    with open(data_path["final_burgrieden"], "w") as file:
        file.write(output)
