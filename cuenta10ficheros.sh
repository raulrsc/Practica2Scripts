#!/bin/bash
#Comprobamos si hay como minimo 1 parametro
if [ $# -ge 1 ]; then
#Si tenemos un paramtro entonces comprobaremos si este es un directorio
    if [ -d $1 ]; then
#Usaremos un contador para saber cuantos ficheros hay dentro del directorio
        cont=0
#Con el bucle for recorremos el directorio e ira contando cuantos ficheros hay
        for dir in $(ls $1); do
            if [ -f $1/$dir ]; then
#Si encuentra un fichero se ira incrementado el contador que definimos antes el cual empezaba en 0
                let "cont++"
            fi
        done
#Despues de hacer el bucle for tendremos que ver si el contador tiene 10 ficheros o mas o no
        if [ $cont -ge 10 ]; then
            echo "El directorio $1 contiene 10 o mas ficheros regulares"
        else
            echo "El directorio $1 contiene menos de 10 ficheros regulares"
        fi
#Si no es un directorio mandaremos un mensaje de error 
    else
        echo "ERROR. EL parametro pasado no es un directorio valido"
        sleep 2
        exit 2
    fi
#Si no se ha introducido al menos 1 parametro mandaremos un mensaje de que no hay parametros
else
    echo "ERROR. Se espera al menos 1 parametro que sea un directorio valido"
    sleep 2
    exit 1
fi
echo "Fin del Programa"
read -p "Pulse Intro para continuar"