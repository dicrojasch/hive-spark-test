# Punto 4

El script [create_data.sh](create_data.sh) genera un csv (`test_file.csv`) de 6 columnas y 6.230.500.600 filas, si se requieren menos filas se necesitaría modificar las líneas 21 y 22. Para ejecutar el script, usar el siguiente comando:

```shell
sh create_data.sh
```

El programa [punto4.py](punto4.py) esta escrito en `Python3`, este recibe 2 parámetros:
1. Ruta absoluta de un archivo CSV (el generado anteriormente con [create_data.sh](create_data.sh))
2. Uno de los 3 siguientes categorías (Centro, Norte u Oriente), esta categoría se usa para el resultado final.

El programa categoriza el archivo con los siguientes valores (Sede Centro, Sede Norte C y
Sede Oriente F) mostrando las cantidades de registros correspondientes a cada categoria. Después reemplaza los valores (Sede Centro, Sede Norte C y
Sede Oriente F) por (Centro, Norte u Oriente). Después agrega una columna con la inicial de la categoría. Después filtra según el parámetro 2. Después agrega el tiempo de procesamiento del programa hasta este punto y Finalmente guarda este resultado en un csv.

Para ejecutar el programa, requiere previamente instalar la librería `Pandas`:
```shell
pip3 install --user pandas
```
Con la librería instalada, se ejecuta con:
```shell
python3 punto4.py /<repository-path>/Punto4/test_file.csv <Centro|Norte|Oriente>
```

## Resultados

Los siguientes archivos muestran los resultados para diferentes cantidades de registros procesados por [punto4.py](punto4.py):

[results_file_6230.csv](results_file_6230.csv) - 6230 registros procesados
[results_file_62300.csv](results_file_62300.csv) - 62300 registros procesados
[results_file_623000.csv](results_file_623000.csv) - 623000 registros procesados
[results_file_6230000.csv](results_file_6230000.csv) - 6230000 registros procesados
[results_file_62300000.csv](results_file_62300000.csv) - 62300000 registros procesados
[results_file_623000000.csv](results_file_623000000.csv) - 623000000 registros procesados
