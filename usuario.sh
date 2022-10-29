#!/bin/bash
#Creamos una funcion para el caso de que quiera introducir otro usuario aparte de el que introdujo por parametro
function otro {
    if id "$usuario" >>ejerciciousuarios.log 2>&1; then
        echo "Usuario: $usuario"
        id $usario | cut -d ',' -f1
        exit 0
    else
        echo "El usuario $usuario no existe"
        exit 4
    fi
}
#Comprobamos si se introdujo al menos 1 parametro
if [ $# -ge 1 ]; then
    echo "Has introducido un parametro o mas"
else
    echo "No hay ningun parametro introducido"
    exit
fi
#Si tenemos un parametro buscaremos el nombre de usuario, uid, gid y directorio de trabajo
if id $1 >>ejerciciousuarios.log 2>&1; then
    echo "Usuario: $1"
    #Con el comando id mostraremos el uid y el gid
    id $1 | cut -d ',' -f1
    echo "Su directorio es home/$1"
    sleep 2
    #Mostraremos un mensaje de si quiere introducir otro usuario o salir del programa
    echo "¿Quieres introducir otro usuario o quieres salir del programa?"
    echo "Pulsa OU para buscar otro usuario o S para salir del programa"
    #La opcion se guardara en la variable opc
    read opc
    #Haremos un case donde si la variable $opc es OU buscara el nombre de usuario uid, gid y directorio de trabajo
    #Si elegie la opcion S se saldra del script y si no se elige una de estas dos se mostrara un mensaje de que no se opto por ninguna de las dos opciones
    case $opc in
    OU)
        echo "Dime el nombre de otro usuario"
        read usuario
        otro
        ;;
    S)
        echo "Decidiste salir del programa"
        exit 0
        ;;
    *)
        echo "No elegiste ninguna de las dos opciones"
        exit 3
        ;;
    esac
else
    echo "El usuario $1 no existe"
    exit 2
fi
