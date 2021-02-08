# Descripción

Este es un ambiente `docker-compose` que esta configurado para funcionar conjuntamente como un ambiente Hadoop, este ambiente está compuesto de los siguientes componentes:
1. 1 Namenode
2. 1 Datanode
3. 1 Resource Manage
4. 1 Node Manager
5. 1 History Server
6. 1 Hive Server (Postgreesql)
7. 1 Hive Metastore (Postgreesql)
8. 1 Hue
9. 1 Postgresql como base de datos de Hue

Para ejecutarse únicamente requiere iniciar el `docker-compose`, lo anterior puede realizarse con el siguiente comando (ubicado en el command-line en la carpeta donde se encuentra el archivo [docker-compose.yml](docker-compose.yml)):

```shell
docker-compose -up
```

Después de que hayan iniciado todos los servicios, para acceder a Hue desde el navegador se puede mediante la URL `http://localhost:8888/`.

Para acceder a Hive ver este [README](./init_hive/README.md)