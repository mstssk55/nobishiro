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

def get_iot_data():

    sql = 'SELECT Device.id,Device.JSTTime,Device.ConnectionDeviceId,Device.vibration FROM dbo.iotsql AS Device INNER JOIN (SELECT ConnectionDeviceId,MAX(JSTTime) AS MaxTime FROM dbo.iotsql GROUP BY ConnectionDeviceId) AS DeviceB ON Device.JSTTime = DeviceB.MaxTime AND Device.ConnectionDeviceId = DeviceB.ConnectionDeviceId;'
    iot_datas = []
    datas = {}
    with pyodbc.connect('DRIVER='+driver+';SERVER=tcp:'+server+';PORT=1433;DATABASE='+database+';UID='+username+';PWD='+ password) as conn:
        with conn.cursor() as cursor:
            cursor.execute(sql)
            row = cursor.fetchone()
            while row:
                row = cursor.fetchone()
                if row:
                    data = [i for i in row]
                    iot_datas.append(data)

    for i in iot_datas:
        s.datas[s.iot_devices[i[2]][0]][s.iot_devices[i[2]][1]] = i
    return s.datas

