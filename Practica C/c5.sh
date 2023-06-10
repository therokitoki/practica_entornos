#!/bin/bash

#C.5) Crear un programa que permita recibir el nombre completo de un mes del año (M) en
#inglés y muestre por pantalla el mensaje “El mes M tiene X días”. Emplear case para su
#resolución.
#Nota: ignorar el caso de año bisiesto.
if [ $# -ne 1 ] 
then
	exit 1
fi
MES=$(echo $1 | tr [:lower:] [:upper:]) #paso todo a mayusculas

case $MES in
	JANUARY | MARCH | MAY | JULY | AUGUST | OCTOBER | DECEMBER)
		echo "El mes $1 tiene 31 días.";;
	FEBRUARY)
		echo "El mes $1 tiene 28/29 días.";;
	APRIL | JUNE | SEPTEMBER | NOVEMBER)
		echo "El mes $1 tiene 30 días.";;
	*)
		echo "Mes desconocido.";;
esac

exit 0