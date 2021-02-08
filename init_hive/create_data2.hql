-- to run, in linux command-line:
-- docker exec -it hive-server bash
-- echo '!run /mnt/create_data.hql' | /opt/hive/bin/beeline -u jdbc:hive2://localhost:10000


CREATE TABLE IF NOT EXISTS co_ventas_INT (data_date DATE, dpto VARCHAR(250), sale_type VARCHAR (250), sale_count BIGINT, value VARCHAR(250));
set hive.exec.dynamic.partition=true;    
set hive.exec.dynamic.partition.mode=nonstrict;  
CREATE TABLE IF NOT EXISTS co_ventas (id BIGINT, dpto VARCHAR(250), sale_type VARCHAR (250), sale_count BIGINT, value VARCHAR(250), primary key(id) disable novalidate)
PARTITIONED BY (data_date DATE);

CREATE TABLE IF NOT EXISTS co_ventas2 (id BIGINT, dpto VARCHAR(250), sale_type VARCHAR (250), sale_count BIGINT, value VARCHAR(250), month INT, primary key(id) disable novalidate)
PARTITIONED BY (data_date DATE);

INSERT INTO co_ventas_INT VALUES('2015-01-01', 'ventas', 'onsite', '201', 'venta de equipos'),
('2015-02-06', 'ventas', 'online', '22', 'venta de servicios'),
('2015-03-09', 'ecommerce', 'enterprise', '827', 'venta de equipos'),
('2015-04-12', 'comercial', 'online', '2000', 'venta de equipos'),
('2015-05-13', 'ecommerce', 'enterprise', '731', 'venta de dispositivos'),
('2015-06-15', 'comercial', 'onsite', '841', 'venta de servicios'),
('2015-07-17', 'ventas', 'online', '456', 'venta internacional de equipos'),
('2015-08-19', 'ecommerce', 'onsite', '789', 'venta de equipos'),
('2015-09-20', 'comercial', 'enterprise', '325', 'venta de servicios'),
('2015-10-23', 'ventas', 'enterprise', '4568', 'venta de equipos'),
('2015-11-25', 'ecommerce', 'onsite', '12', 'venta de servicios'),
('2015-12-28', 'comercial', 'online', '60', 'venta internacional de equipos'),
('2016-01-02', 'ventas', 'onsite', '201', 'venta de equipos'),
('2016-02-07', 'ventas', 'online', '22', 'venta de servicios'),
('2016-03-10', 'ecommerce', 'enterprise', '827', 'venta de equipos'),
('2016-04-13', 'comercial', 'online', '2000', 'venta de equipos'),
('2016-05-14', 'ecommerce', 'enterprise', '731', 'venta de dispositivos'),
('2016-06-16', 'comercial', 'onsite', '841', 'venta de servicios'),
('2016-07-18', 'ventas', 'online', '456', 'venta internacional de equipos'),
('2016-08-20', 'ecommerce', 'onsite', '789', 'venta de equipos'),
('2016-09-21', 'comercial', 'enterprise', '325', 'venta de servicios'),
('2016-10-24', 'ventas', 'enterprise', '4568', 'venta de equipos'),
('2016-11-26', 'ecommerce', 'onsite', '12', 'venta de servicios'),
('2016-12-29', 'comercial', 'online', '60', 'venta internacional de equipos'),
('2016-01-01', 'ventas', 'onsite', '201', 'venta de equipos'),
('2016-02-04', 'ventas', 'online', '22', 'venta de servicios'),
('2016-03-07', 'ecommerce', 'enterprise', '827', 'venta de equipos'),
('2016-04-10', 'comercial', 'online', '2000', 'venta de equipos'),
('2016-05-11', 'ecommerce', 'enterprise', '731', 'venta de dispositivos'),
('2016-06-13', 'comercial', 'onsite', '841', 'venta de servicios'),
('2016-07-15', 'ventas', 'online', '456', 'venta internacional de equipos'),
('2016-08-17', 'ecommerce', 'onsite', '789', 'venta de equipos'),
('2016-09-18', 'comercial', 'enterprise', '325', 'venta de servicios'),
('2016-10-21', 'ventas', 'enterprise', '4568', 'venta de equipos'),
('2016-11-23', 'ecommerce', 'onsite', '12', 'venta de servicios'),
('2016-12-25', 'comercial', 'online', '60', 'venta internacional de equipos'),
('2016-01-02', 'ventas', 'onsite', '201', 'venta de equipos'),
('2016-02-07', 'ventas', 'online', '22', 'venta de servicios'),
('2016-03-08', 'ecommerce', 'enterprise', '827', 'venta de equipos'),
('2016-04-10', 'comercial', 'online', '2000', 'venta de equipos'),
('2016-05-11', 'ecommerce', 'enterprise', '731', 'venta de dispositivos'),
('2016-06-13', 'comercial', 'onsite', '841', 'venta de servicios'),
('2016-07-15', 'ventas', 'online', '456', 'venta internacional de equipos'),
('2016-08-18', 'ecommerce', 'onsite', '789', 'venta de equipos'),
('2016-09-21', 'comercial', 'enterprise', '325', 'venta de servicios'),
('2016-10-22', 'ventas', 'enterprise', '4568', 'venta de equipos'),
('2016-11-26', 'ecommerce', 'onsite', '12', 'venta de servicios'),
('2016-12-30', 'comercial', 'online', '60', 'venta internacional de equipos'),
('2016-01-01', 'ventas', 'onsite', '201', 'venta de equipos'),
('2016-02-06', 'ventas', 'online', '22', 'venta de servicios'),
('2016-03-09', 'ecommerce', 'enterprise', '827', 'venta de equipos'),
('2016-04-12', 'comercial', 'online', '2000', 'venta de equipos'),
('2016-05-13', 'ecommerce', 'enterprise', '731', 'venta de dispositivos'),
('2016-06-15', 'comercial', 'onsite', '841', 'venta de servicios'),
('2016-07-17', 'ventas', 'online', '456', 'venta internacional de equipos'),
('2016-08-19', 'ecommerce', 'onsite', '789', 'venta de equipos'),
('2016-09-20', 'comercial', 'enterprise', '325', 'venta de servicios'),
('2016-10-23', 'ventas', 'enterprise', '4568', 'venta de equipos'),
('2016-11-25', 'ecommerce', 'onsite', '12', 'venta de servicios'),
('2016-12-28', 'comercial', 'online', '60', 'venta internacional de equipos'),
('2017-01-02', 'ventas', 'onsite', '201', 'venta de equipos'),
('2017-02-05', 'ventas', 'online', '22', 'venta de servicios'),
('2017-03-07', 'ecommerce', 'enterprise', '827', 'venta de equipos'),
('2017-04-12', 'comercial', 'online', '2000', 'venta de equipos'),
('2017-05-14', 'ecommerce', 'enterprise', '731', 'venta de dispositivos'),
('2017-06-17', 'comercial', 'onsite', '841', 'venta de servicios'),
('2017-07-18', 'ventas', 'online', '456', 'venta internacional de equipos'),
('2017-08-19', 'ecommerce', 'onsite', '789', 'venta de equipos'),
('2017-09-21', 'comercial', 'enterprise', '325', 'venta de servicios'),
('2017-10-25', 'ventas', 'enterprise', '4568', 'venta de equipos'),
('2017-11-27', 'ecommerce', 'onsite', '12', 'venta de servicios'),
('2017-12-28', 'comercial', 'online', '60', 'venta internacional de equipos'),
('2018-02-03', 'ventas', 'online', '22', 'venta de servicios'),
('2018-03-05', 'ecommerce', 'enterprise', '827', 'venta de equipos'),
('2018-04-11', 'comercial', 'online', '2000', 'venta de equipos'),
('2018-05-13', 'ecommerce', 'enterprise', '731', 'venta de dispositivos'),
('2018-06-15', 'comercial', 'onsite', '841', 'venta de servicios'),
('2018-07-17', 'ventas', 'online', '456', 'venta internacional de equipos'),
('2018-08-19', 'ecommerce', 'onsite', '789', 'venta de equipos'),
('2018-09-21', 'comercial', 'enterprise', '325', 'venta de servicios'),
('2018-10-22', 'ventas', 'enterprise', '4568', 'venta de equipos'),
('2018-11-26', 'ecommerce', 'onsite', '12', 'venta de servicios'),
('2018-12-29', 'comercial', 'online', '60', 'venta internacional de equipos'),
('2019-02-01', 'ventas', 'online', '22', 'venta de servicios'),
('2019-03-09', 'ecommerce', 'enterprise', '827', 'venta de equipos'),
('2019-04-11', 'comercial', 'online', '2000', 'venta de equipos'),
('2019-05-12', 'ecommerce', 'enterprise', '731', 'venta de dispositivos'),
('2019-06-13', 'comercial', 'onsite', '841', 'venta de servicios'),
('2019-07-14', 'ventas', 'online', '456', 'venta internacional de equipos'),
('2019-08-19', 'ecommerce', 'onsite', '789', 'venta de equipos'),
('2019-09-25', 'comercial', 'enterprise', '325', 'venta de servicios'),
('2019-10-26', 'ventas', 'enterprise', '4568', 'venta de equipos'),
('2019-11-29', 'ecommerce', 'onsite', '12', 'venta de servicios'),
('2019-12-30', 'comercial', 'online', '60', 'venta internacional de equipos'),
('2020-02-02', 'ventas', 'online', '22', 'venta de servicios'),
('2020-03-06', 'ecommerce', 'enterprise', '827', 'venta de equipos'),
('2020-04-15', 'comercial', 'online', '2000', 'venta de equipos'),
('2020-05-16', 'ecommerce', 'enterprise', '731', 'venta de dispositivos'),
('2020-06-17', 'comercial', 'onsite', '841', 'venta de servicios'),
('2020-07-19', 'ventas', 'online', '456', 'venta internacional de equipos'),
('2020-08-21', 'ecommerce', 'onsite', '789', 'venta de equipos'),
('2020-09-23', 'comercial', 'enterprise', '325', 'venta de servicios'),
('2020-10-25', 'ventas', 'enterprise', '4568', 'venta de equipos'),
('2020-11-29', 'ecommerce', 'onsite', '12', 'venta de servicios'),
('2020-12-29', 'comercial', 'online', '60', 'venta internacional de equipos');

INSERT INTO co_ventas PARTITION(data_date) 
SELECT row_number() over () as id,dpto,sale_type,sale_count,value,data_date FROM co_ventas_int; 

CREATE TABLE IF NOT EXISTS co_ventas2 (id BIGINT, dpto VARCHAR(250), sale_type VARCHAR (250), sale_count BIGINT, value VARCHAR(250), month INT, primary key(id) disable novalidate)
PARTITIONED BY (data_date DATE);

INSERT INTO co_ventas2 PARTITION(data_date)
SELECT row_number() over () as id, dpto, sale_type, sale_count, value, month(data_date) as month, data_date FROM co_ventas
WHERE YEAR(data_date) >= 2017 AND YEAR(data_date) <= 2020
GROUP BY data_date, dpto, sale_type, sale_count, value;