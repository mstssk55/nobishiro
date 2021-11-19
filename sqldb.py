import pyodbc
import os
from dotenv import load_dotenv
load_dotenv()

server = os.getenv('SERVER_NAME')
database = os.getenv('DB_NAME')
username = os.getenv('USER_NAME')
password = os.getenv('PASSWORD')   
driver= os.getenv('DRIVER')


def get_iot_data():
    iot_datas = []
    with pyodbc.connect('DRIVER='+driver+';SERVER=tcp:'+server+';PORT=1433;DATABASE='+database+';UID='+username+';PWD='+ password) as conn:
        with conn.cursor() as cursor:
            cursor.execute("SELECT TOP 10* FROM dbo.iotsql")
            row = cursor.fetchone()
            while row:
                iot_datas.append(row[0])
                row = cursor.fetchone()
    return iot_datas

