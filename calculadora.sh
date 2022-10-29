#!/bin/bash
#Crearemos una funcion donde se declare por pantalla los numeros a introducir y donde se compruebe si lo introduzido es un numero o no
function Introducir {
    echo "Introduce un numero:"
    read num1
    echo "Introduce un segundo numero"
    read num2
    if ! [ "$num1" -eq "$num1" ] 2>>errores.txt && date >>errores.txt; then
        # Si no se ha introducido un número o parametro, se notificara al usuario.
        echo "El valor no puede estar vacio o no es un número. ¡Compruebalo!"
        exit 1
    fi
    if ! [ "$num2" -eq "$num2" ] 2>>errores.txt && date >>errores.txt; then
        # Si no se ha introducido un número o parametro, se notificara al usuario.
        echo "El valor no puede estar vacio o no es un número. ¡Compruebalo!"
        exit 1
    fi
    #Creamos una funcion para hacer la suma
}
function sum {
    #Llamamos a la funcion Introducir para que se declarar los numeros a sumar
    Introducir
    sumar=$((num1 + num2))
    echo "La suma de $num1 y $num2 es igual a: $sumar"
}
#Creamos una funcion para hacer la resta
function rest {
    #Llamamos a la funcion Introducir para que se declarar los numeros a restar
    Introducir
    #Si el segundo numero es mayor al primero cambiaremos el orden para que no salga un numero negativo
    if [ $num2 -gt $num1 ]; then
        alt1=$num2
        alt2=$num1
        restar=$((alt1 - alt2))
        echo "La resta de $alt1 y $alt2 es igual a: $restar"
    else
        restar=$((num1 - num2))
        echo "La resta de $num1 y $num2 es igual a: $restar"
    fi
}
#Creamos una funcion para dividir
function div {
    #Llamamos a la funcion Introducir para que se declarar los numeros para dividir
    Introducir
    dividir=$(echo "scale=2; $((num1))/$((num2))" | bc)
    echo "La divison de $num1 y $num2 es igual a: $dividir"
}
#Creamos una funcion para multiplicar
function mult {
    #Llamamos a la funcion Introducir para que se declarar los numeros para multiplicar
    Introducir
    multiplicar=$((num1 * num2))
    echo "La multiplicacion de $num1 x $num2 es igual a: $multiplicar"
}
#Usamoaa un while para que se muestre el menu
while true; do
    echo "1) Sumar"
    echo "2) Restar"
    echo "3) Dividir"
    echo "4) Multiplicar"
    echo "5) Salir"

    read number
    #Usamos un case para que en caso de usar una de las opciones esta haga la suma, resta, divison, multiplicacion o se salga
    case $number in
    1)
        #La opcion 1 es para la suma
        echo "Has elegido hacer una suma"
        sum
        exit
        ;;
    2)
        #La opcion 2 es para la resta
        echo "Has elegido hacer una resta"
        rest
        exit
        ;;
    3)
        #La opcion 3 es para la dividr
        echo "Has elegido hacer una division"
        div
        exit
        ;;
    4)
        #La opcion 4 es para la multiplicar
        echo "Has elegido hacer una multiplicacion"
        mult
        exit
        ;;
    5)
        #La opcion 5 es para la salir
        echo "Saliste de la calculadora. Adios"
        exit
        ;;
    *)
        #En caso de no poner un numero del 1 al 5 se mostrara un mensaje de error y se volvera mostrar el menu
        echo "Error. No se elegio ninguna de las opciones, Vuelva a elegir un numero y que sea del 1 al 4"
        sleep 2
        ;;
    esac
done
