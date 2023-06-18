"""
Transfer field energy data to database
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
    """ ************* Update database with energy alkis calculations **************** """
    schema_name_helper = 'helper'
    schema_name_main = 'public'
    conn_db_main = None
    cur_db_main = None

    try:
        # create connection and cursor for main database
        conn_db_main = database_connector(DB_MAIN)
        cur_db_main = conn_db_main.cursor(cursor_factory=DictCursor)
        print(cur_db_main)

        select_values_helper = ('"gml_id"', '"Qe_Best"', '"geom"')
        select_table_name_helper = 'alkis_energy_demand'
        select_where_value_helper = '"Qe_Best" is not NULL'
        select_script_helper = f'''
            SELECT {', '.join(select_values_helper)} 
            FROM "{schema_name_helper}".{select_table_name_helper}
            WHERE {select_where_value_helper};
        '''
        print(select_script_helper)
        cur_db_main.execute(select_script_helper)
        records = cur_db_main.fetchall()

        insert_table_main = 'energy_alkis'
        insert_values_main = ('"gml_id"', '"demand"', '"geometry"', '"created_time"', '"modified_time"')
        insert_script_main = f'''
        INSERT INTO 
        "{schema_name_main}".{insert_table_main}({', '.join(insert_values_main)}) 
        VALUES ({("%s, " * len(insert_values_main))[:-2]});
        '''
        print(insert_script_main)
        for record in records:
            insert_values = (
                record["gml_id"], record["Qe_Best"], record["geom"], datetime.now(), datetime.now()
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
