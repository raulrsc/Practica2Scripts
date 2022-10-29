#!/bin/bash
#En la variable mes recogemos la fecha donde solos nos quedaremos con el mes
mes=$(date +'%m')
#Con un case sabremos que dependiedo de si la variable es 1, 2, 3, 4, etc... sera un mes u otro y nos saldra el mensaje estas en el mes x, que tiene x dias
case $mes in
1)
    echo "Estamos en Enero, un mes con 31 dias"
    ;;
2)
    echo "Estamos en Febrero, un mes con 28 dias"
    ;;
3)
    echo "Estamos en Marzo, un mes 31 dias"
    ;;
4)
    echo "Estamos en Abril, un mes con 30 dias"
    ;;
5)
    echo "Estamos en Mayo, un mes con 31 dias"
    ;;
6)
    echo "Estamos en Junio, un mes con 30 dias"
    ;;
7)
    echo "Estamos en Julio, un mes con 31 dias"
    ;;
8)
    echo "Estamos en Agosto, un mes con 31 dias"
    ;;
9)
    echo "Estamos en Septiembre, un mes con 30 dias"
    ;;
10)
    echo "Estamos en Octubre, un mes con 31 dias"
    ;;
11)
    echo "Estamos en Noviembre, un mes con 30 dias"
    ;;
12)
    echo "Estamos en Diciembre, un mes con 31 dias"
    ;;
esac
