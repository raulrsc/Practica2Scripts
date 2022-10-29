#!/bin/bash
#Comprobamos si hay al menos 1 parametro
if [ $# -ge 1 ]; then
    echo "Has introducido al menos 1 parametro"
else
    echo "No hay ningun parametro introducido"
    exit
fi
#Si hay un parametro entonces comprobaremos que el primer parametro es un directorio
if [ -d $1 ]; then
    echo "El directorio $1 existe"
    #Si es un directorio entonces usaremos tar para comprimir el directorio con el nombre copia_script+ la fecha actual
    tar cvf copia_script_$(date +%d%m%Y).tar $1
else
    echo "El directorio $1 no existe"
    exit 1
fi
