import pyodbc
import os
import setting as s
from dotenv import load_dotenv
load_dotenv()
import sys

if os.environ.get('SQLCONNSTR_SERVER_NAME'):
    server = os.environ['SQLCONNSTR_SERVER_NAME']
    database = os.environ['SQLCONNSTR_DB_NAME']
    username = os.environ['SQLCONNSTR_USER_NAME']
    password = os.environ['SQLCONNSTR_PASSWORD']   
    driver= os.environ['SQLCONNSTR_DRIVER']
else:
    server = os.getenv('SERVER_NAME')
    database = os.getenv('DB_NAME')
    username = os.getenv('USER_NAME')
    password = os.getenv('PASSWORD')   
    driver= os.getenv('DRIVER')

# def get_iot_data():
#     iot_datas = {}
#     for n in s.room_number:
#         datas = []
#         with pyodbc.connect('DRIVER='+driver+';SERVER=tcp:'+server+';PORT=1433;DATABASE='+database+';UID='+username+';PWD='+ password) as conn:
#             with conn.cursor() as cursor:
#                 cursor.execute("SELECT TOP 10* FROM dbo.iotsql Where room = ? Order By id DESC",n)
#                 row = cursor.fetchone()
#                 while row:
#                     datas.append(row)
#                     row = cursor.fetchone()
#         iot_datas[n] = datas
#     return iot_datas

def get_iot_data():
    print(server)
    print(database)
    print(username)
    print(password)
    print(driver)

    iot_datas = {}
    for n in s.room_number:
        datas = {}
        for t in s.device_type:
            type_datas = []
            with pyodbc.connect('DRIVER='+driver+';SERVER=tcp:'+server+';PORT=1433;DATABASE='+database+';UID='+username+';PWD='+ password) as conn:
                with conn.cursor() as cursor:
                    cursor.execute("SELECT TOP 10* FROM dbo.iotsql Where room = ? And type = ? Order By id DESC",n,t)
                    row = cursor.fetchone()
                    while row:
                        type_datas.append(row)
                        row = cursor.fetchone()
            datas[t] = type_datas
        iot_datas[n] = datas
    return iot_datas
