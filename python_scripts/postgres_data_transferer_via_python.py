"""
1 - Transfer alkis building from helper database to thesis database
"""

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
    schema_name_helper = 'helper'
    schema_name_main = 'public'
    conn_db_main = None
    cur_db_main = None

    try:
        # create connection and cursor for main database
        conn_db_main = database_connector(DB_MAIN)
        cur_db_main = conn_db_main.cursor(cursor_factory=DictCursor)
        print(cur_db_main)

        select_script_helper = f'SELECT * FROM "{schema_name_helper}".ax_gebaeude'
        cur_db_main.execute(select_script_helper)
        records = cur_db_main.fetchall()

        insert_script_main = f'''
        INSERT INTO 
        "{schema_name_main}".alkis_building(gml_id, geometry, function, year, created_time, modified_time) 
        VALUES (%s, %s, %s, %s, %s, %s);
        '''

        for record in records:
            insert_values = (
                record["gml_id"], record["geom"], record["gebaeudefu"],
                record["Geb_BJ"], datetime.now(), datetime.now()
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
