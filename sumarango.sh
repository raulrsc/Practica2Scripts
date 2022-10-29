#!/bin/bash
#Pedimos dos numeros por teclado con un echo y lo guardamos en una variable con read
echo "Introduce un Numero: "
read num
echo "Introduce un segundo Numero: "
read num1
#Creamos una funcion para comprobar si es un numero
function ComNum {
    #Si no es un numero mostraremos un mensaje de que lo introducido por teclado no es un numero y si da algun error lo enviamos a /dev/null
    if ! [ $num -ge 0 ] 2>/dev/null; then
        echo "$num no es un numero"
        exit 1
    else
        echo "$num es un numero"
    fi
    if ! [ $num1 -ge 0 ] 2>/dev/null; then
        echo "$num1 no es un numero"
        exit 1
    else
        echo "$num1 es un numero"
    fi
}
#Llamamos la funcion ComNum
ComNum
#Creamos una funcion para hacer la secuencia con el comando seq
function CSeq {
    #Si el segundo numero es menor que el primer numero le daremos la vuelta para que la secuencia empieze con el segundo numero y termine por el primero
    if [ $num1 -lt $num ]; then
        alt=$num1
        alt1=$num
        #Para tener la secuencia usaremos el comando seq y seguido de -s+ saldra seguido la secuencia separado por un + y lo guardamos en una variable
        secuencia=$(seq -s+ $alt $alt1)
        #Para que haga la suma de la secuencia usamos el comando seq seguido de -s " + "
        suma=$(expr $(seq -s " + " $alt $alt1))
        #Por pantalla mostraremos un mensaje donde salga la secuencia y luego el resultado de la suma de la secuencia
        echo "El resultado de hacer la secuencia con el comando seq,la secuencia es $secuencia y el resultado de la suma es: $suma"
    else
        #Si el primer numero es menor que el segundo hara la secuencia empezando desde el primero hasta el segundo y lo demas sera igual que en lo anterior
        secuencia=$(seq -s+ $num $num1)
        suma=$(expr $(seq -s " + " $num $num1))
        echo "El resultado de hacer la secuencia con el comando seq,la secuencia es $secuencia y el resultado de la suma es: $suma"
    fi
}
#Llamamos a la funcion Cseq
CSeq
#Creamos una funcion para hacer la secuencia con el bucle for como en el lenguaje C
function Cfor {
    #Si el segundo numero es menor que el primer numero le daremos la vuelta para que la secuencia empieze con el segundo numero y termine por el primero
    if [ $num1 -lt $num ]; then
        alt=$num1
        alt1=$num
        cont=0
        #Usamos un bucle for que empiece por el numero menor y que termine cuando sea el numero mayor
        for ((i = $alt; i <= $alt1; i++)); do
            #Usaremos un contador donde el resultado sea el valor de contador + $i
            let cont=cont+$i
        done
        echo "La suma de la secuencia con el bucle for entre $num y $num1 es: $cont"
    else
        cont=0
        #Si el primer numero es menor que el segundo entonces el bucle for empezara por el primer numero y terminara en el segundo, todo lo demas sera igual que lo anterior
        for ((i = $num; i <= $num1; i++)); do
            let cont=cont+$i
        done
        echo "La suma de la secuencia con el bucle for entre $num y $num1 es: $cont"
    fi
}
#Llamamos a la funcion Cfor
Cfor
