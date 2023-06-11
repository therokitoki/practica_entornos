#!/bin/bash
#I.1) Crear un script para mostrar por pantalla los números impares del 1 al n.
#n es un argumento recibido por la línea de comandos
#y debe ser un entero positivo.

[[ $# -ne 1 ]] || [ $1 -le 0 ] && echo "No es un número válido" && exit 1

echo "Validación completada"

for NUM in $(seq 1 $1);
do
	echo "$NUM"
done

exit 0

