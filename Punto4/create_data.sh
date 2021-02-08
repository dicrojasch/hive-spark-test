#!/usr/bin/env bash

COL1='Sede Centro,Sede Norte C,Sede Oriente F'
COL2='William,Juan,María,Eva,Mario,Luigi,Ivan'
COL3='Tipo A,TipoB,Tipo C,Tipo D,Tipo E, Tipo F,Tipo G'
COL4='Bogota,Medellín,Cali,Barranquilla,Cartagena,Huila,Villavicencio,Cucuta,Leticia,Pasto,Bucaramanga'
COL5='Ventas,Comercial,Gerencia,Sistemas,Logística,Soporte,Atención al Cliente'
export COL1
export COL2
export COL3
export COL4
export COL5

seq 0 6230 | xargs -I{} sh -c 'x="$(shuf -i 0-10 -n 1)" ; echo "$(echo $COL1 | cut -d "," -f $(shuf -i 1-3 -n 1)),\
$(echo $COL2 | cut -d "," -f $(echo 1 | awk "{print $x%7+1}")),\
$(echo $COL3 | cut -d "," -f $(echo 1 | awk "{print $x%7+1}")),\
$(echo $COL4 | cut -d "," -f $(echo 1 | awk "{print $x%11+1}")),\
$(echo $COL5 | cut -d "," -f $(echo 1 | awk "{print $x%7+1}")),\
$(shuf -i 100000-10000000 -n 1) "' > test.csv

seq 1 1000000 | xargs -I{} cat test.csv > test_file.csv
seq 1 500600 | xargs -I{} cat test.csv > test_file.csv
rm test.csv
