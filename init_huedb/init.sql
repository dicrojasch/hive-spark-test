SELECT 'CREATE DATABASE hue'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'hue')\gexec
