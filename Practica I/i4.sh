#!/bin/bash
#I.4) Crear un script que permita el ingreso de una serie de números
#(consideremos que la entrada es adecuada, que la persona que emplea el
#script ingresa solo números) y determinar cuántos de ellos son:
#pares
#positivos
#que tengan 3 cifras

#POSITIVOS=0
#PARES=0
#TRES_CIF=0
CANT_FIN=0
for NUM in $@;
do
#	[ $NUM -gt 0 ] && POSITIVOS=$(($POSITIVOS + 1))
#	[ $(($NUM % 2)) == 0 ] && PARES=$(($PARES + 1))
#	[ $(($NUM - 100)) -ge 0 ] && TRES_CIF=$(($TRES_CIF + 1))
	[ $NUM -gt 0 ] && [ $(($NUM % 2)) == 0 ] && [ $(($NUM - 100)) -ge 0 ] && CANT_FIN=$(($CANT_FIN +1))

done
echo "Cant final: $CANT_FIN"
#echo "Número total de argumentos: $#"
#echo "Cantidad de números pares: $PARES"
#echo "Cantidad de números positivos: $POSITIVOS"
#echo "Cantidad de números de 3 cifras: $TRES_CIF"
 
