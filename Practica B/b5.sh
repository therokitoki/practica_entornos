#!/bin/bash

#Crear un script que reciba como argumento tres n�meros, indicando d�a, mes y a�o y
#determine si estos valores corresponden o no a una fecha v�lida.
#Emplear construcciones de test (corchetes [ ]) y operadores l�gicos (&& por ejemplo).
#Fechas inv�lidas: son las que posean n�meros no positivos y/o demasiado grandes para lo que
#representan, o bien no corresponden los d�as al mes indicado para el a�o establecido.
#Tip: puede ser de ayuda el comando date

#Verifico cantidad argumentos

if [ $# -ne 3 ]
then
	echo "La cantidad de argumentos no es v�lida"
	exit 1
else
	DIA=$1
	MES=$2
	ANIO=$3
	date -d "$MES/$DIA/$ANIO" > /dev/null 2>&1 && echo "Fecha v�lida" || echo "Fecha inv�lida"
fi
exit 0 
