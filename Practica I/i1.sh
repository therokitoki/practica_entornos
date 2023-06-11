#!/bin/bash
#I.1) Crear un script para mostrar por pantalla los n�meros impares del 1 al n.
#n es un argumento recibido por la l�nea de comandos
#y debe ser un entero positivo.

[[ $# -ne 1 ]] || [ $1 -le 0 ] && echo "No es un n�mero v�lido" && exit 1

echo "Validaci�n completada"

for NUM in $(seq 1 $1);
do
	echo "$NUM"
done

exit 0

