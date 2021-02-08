SELECT 'CREATE DATABASE hue'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'hue')\gexec
SELECT data_date, dpto, sale_type, sale_count, value, month(data_date) as month FROM co_ventas
WHERE YEAR(data_date) >= 2017 AND YEAR(data_date) <= 2020
GROUP BY data_date, dpto, sale_type, sale_count, value