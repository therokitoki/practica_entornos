#!/bin/bash

#Crear un script que reciba dos rutas a archivos de textyo y que indique si estos archivos
# tienen la misma cantidad de lineas. Validar que los archivos existen y se pueden leer.

if [ $# -eq 2 ] #chequeo que haya 2 argumentos de entrada
then
	if [ -f $1 ] && [ -f $2 ] #chequeo que sean archivos regulares
	then
		echo "Existen y son archivos regulares."
		if [ -r $1 ] && [ -r $2 ] #chequeo que tengan permiso de lectura
		then
			echo "Tengo permiso de lectura."
			N_LINEAS_1=$(wc -l < $1) 
			N_LINEAS_2=$(wc -l < $2)
			if [ $N_LINEAS_1 -eq $N_LINEAS_2 ] 
			then #el $(( )) sirve para evaluar expresiones aritmeticas, entonces lo transforma en int, no lo usamos al final
				echo "Tienen la misma cantidad de lienas: $N_LINEAS_1."
			else
				echo "No tienen la misma cantidad de lineas $N_LINEAS_1 != $N_LINEAS_2."
			fi
			exit 0
		else
			echo "Permisos insuficientes."
			exit 1
		fi
	else
		echo "No son archivos regulares o no existen."
		exit 2
	fi
else
	echo "Cantidad de argumentos invalida."
	exit 3
fi
	