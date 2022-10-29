#!/bin/bash
#Hacemos un echo donde se pidan las 3 alturas, que recogeran en tres variables con el comando read
echo "Introduce una altura: "
read num
echo "Introduce otra altura: "
read num1
echo "Introduce otra altura: "
read num2
#Hacemos unas funcion donde se compruebe si lo introducido es un numero o no
function ComNum {
    #Si no es numero pondremos que no es numero y lo errores los enviaremos a /dev/null
    if ! [ $num -ge 0 ] 2>/dev/null; then
        echo "$num no es un numero"
        exit 1
    else
        echo "$num es un numero"
    fi
    if ! [ $num1 -ge 0 ] 2>/dev/null; then
        echo "$num1 no es un numero"
        exit 2
    else
        echo "$num1 es un numero"
    fi
    if ! [ $num2 -ge 0 ] 2>/dev/null; then
        echo "$num2 no es un numero"
        exit 3
    else
        echo "$num2 es un numero"
    fi
}
#Llamamos a la funcion
ComNum
#Para pasar la altura de centimetros a metros divideremos entre 100 y lo recogeremos en una variable
mnum=$(echo "scale=2;$((num))/100" | bc)
mnum1=$(echo "scale=2;$((num1))/100" | bc)
mnum2=$(echo "scale=2;$((num2))/100" | bc)
#Ahora comparemos las alturas y asi obtendremos la mayor ya en metros
if [ $num -gt $num1 ] && [ $num -gt $num2 ]; then
    echo "$mnum metros es el mas alto"
fi
if [ $num1 -gt $num ] && [ $num1 gt $num2 ]; then
    echo "$mnum1 metros es el mas alto"
fi
if [ $num2 -gt $num1 ] && [ $num2 -gt $num ]; then
    echo "$mnum2 metros es el mas alto"
fi
