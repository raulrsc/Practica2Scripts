#!/bin/bash
#Pediremos un numero con echo y lo recogemos en una variable con read
echo "Introduce un Numero: "
read num
#Creamos una funcion para comprobar si es un numero o no
function ComNum {
    #Si no es un numero mostraremos un mensaje de que no se introdujo un numero y si da error los mandaremos a /dev/null
    if ! [ $num -ge 0 ] 2>/dev/null; then
        echo "$num no es un numero"
        exit 1
    else
        #Si es un numero saldra un mensaje de que es un numero
        echo "$num es un numero"
    fi
}
#Llamaremos a la funcion
ComNum
#Comproabamos si el numero esta entre 15 y 65 que es el rango de edad que se nos pide
if [ $num -gt 14 ] && [ $num -lt 66 ]; then
    echo "La edad introducida esta entre 15 y 65"
else
    echo "La edad introducida es menor de 15 o mayor de 65"
    exit
fi
#Recogemos la fecha actual en una variable y a esta le restamos la edad introducida por teclado
anio=$(date +'%Y')
let fnac=$anio-$num
#Usamos otro funcion en la que tendremos un case donde dependiendo de la fecha de nacimiento nos diga de que decada es.
function Fecha {
    case $fnac in
    200[0-9])
        echo "Has nacido en la decada de los 2000"
        ;;
    199[0-9])
        echo "Has nacido en la decada de los 90"
        ;;
    198[0-9])
        echo "Has nacido en la decada de los 80"
        ;;
    197[0-9])
        echo "Has nacido en la decada de los 70"
        ;;
    196[0-9])
        echo "Has nacido en la decada de los 60"
        ;;
    *)
        echo "No tienes la edad min o max"
        ;;
    esac
}
#Llamaremos a la funcion para mostrar el resultado
Fecha
