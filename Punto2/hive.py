# pip3 install --user pyhive thrift sasl thrift_sasl
# docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' hive-server
from pyhive import hive


cursor = hive.connect('172.18.0.8').cursor()
cursor.execute('SELECT * FROM co_ventas WHERE YEAR(data_date) >= 2018 AND YEAR(data_date) <= 2020')
for row in cursor.fetchall():
    print(row)
cursor.close()