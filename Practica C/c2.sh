#!/bin/bash

#Crear un script que reciba una única cadena como argumento y determine si esa
#cadena es o no un palíndromo.
#Tip: utilizar el comando rev

if [ $# -eq 1 ]
then
	ORIG=$1
	echo $ORIG
	REV=$(echo $1 | rev)
	echo $REV
	if [ "$ORIG" == "$REV" ]
	then
		echo "Es un palindromo"
	else
		echo "No es un palindromo"
	fi
fi
exit 0
