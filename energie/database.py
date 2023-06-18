from abc import ABC
from psycopg2 import connect


class Database(ABC):

    @staticmethod
    def connector(database_info_dic):
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
