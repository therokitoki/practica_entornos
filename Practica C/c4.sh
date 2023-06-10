#!/bin/bash

#Determinar si un año es bisiesto

if [ $(($1 % 4)) -eq 0] && ([ $(($1 % 100)) -ne 0 ] || [ $(($1 % 400)) -eq 0 ])
then
	echo "$1 es bisiesto."
else
	echo "$1 no es bisiesto."
fi
exit 0
