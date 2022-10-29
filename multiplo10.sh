#!/bin/bash
#Hacemos un echo para que nos muestre por pantalla que introduzcamos un numero y con read lo recogemos en una variable
echo "Introduce un Numero: "
read num
#Creamos una funcion donde se compruebe si se ha introducido un numero
function ComNum {
    if ! [ $num -ge 0 ] 2>/dev/null; then
        echo "$num no es un numero"
        exit 1
    else
        echo "$num es un numero"
    fi
}
#Llamamos a la funcion
ComNum
#Creamos una variable para sacar el resto de la divison entre el numero y 10
division=$((num % 10))
#Sabiendo si el resto es igual a 0 o mayor sabremos si es multiplo de 10 o no 
if [ $division -eq "0" ]; then
#Si el resto es 0 entonces es multiplo de 10
    echo "$num es multiplo de 10"
else
#Si no es 0 entonces no es multiplo de 10
    echo "$num no es multiplo de 10"
fi
