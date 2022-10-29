#!/bin/bash
#Pediremos una fecha con 4 digitos con un echo y lo recogeremos en una variable con read
echo "Introduce una fecha con 4 digitos: "
read num
#Crearemos una funcion para saber si es numero o no lo introducido por teclado
function ComNum {
    #Si no es un numero lo mostraremos por un mensaje y enviaremos los errores a dev/null
    if ! [ $num -ge 0 ] 2>/dev/null; then
        echo "$num no es un numero"
        exit 1
    else
        echo "$num es un numero"
    fi
}
#llamamos a la funcion
ComNum
#Recogemos el mes de nacimiento sacando el resto de dividir entre 12 el numero por teclado
MesNac=$((num % 12))
#Creamos una funcion donde haremos un case donde dependiendo del mes sera de un horoscopo chino u otro
function horoscopo {
    case $MesNac in
    0)
        echo "Tu animal del horoscopo chino es la rata"
        ;;
    1)
        echo "Tu animal del horoscopo chino es el buey"
        ;;
    2)
        echo "Tu animal del horoscopo chino es el tigre"
        ;;
    3)
        echo "Tu animal del horoscopo chino es el conejo"
        ;;
    4)
        echo "Tu animal del horoscopo chino es el dragon"
        ;;
    5)
        echo "Tu animal del horoscopo chino es la serpiente"
        ;;
    6)
        echo "Tu animal del horoscopo chino es el caballo"
        ;;
    7)
        echo "Tu animal del horoscopo chino es la cabra"
        ;;
    8)
        echo "Tu animal del horoscopo chino es el mono"
        ;;
    9)
        echo "Tu animal del horoscopo chino es el gallo"
        ;;
    10)
        echo "Tu animal del horoscopo chino es el perro"
        ;;
    11)
        echo "Tu animal del horoscopo chino es el cerdo"
        ;;
    esac
}
#Si el numero contiene 4 digitos o es menor o igual a 2022 entonces llamaremos a la funcion horoscopo
if [ $num -ge 1000 ] && [ $num -le 2022 ]; then
    horoscopo
else
    #Si el numero introducido es menor de 1000 o mayor de 2022 se mostrara un mensaje de que la fecha es menor a 4 digitos o mayor a 2022
    echo "La fecha introducida es menor a 4 digitos o mayor a 2022"
fi