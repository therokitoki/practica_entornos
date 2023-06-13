#!/bin/bash
#Crear un script que permita recibir tres argumentos: una palabra P, un
# un número positivo n y una ruta. Se debe validar la cantidad de argumentos
#que n cumpla los requisitos y que se tenga permiso de escritura en la ruta indicada
#Deberá generarse un archivo llamado "palabra _p.dat" en la ruta especificada
#Que contenga n lineas numeradas y que cada linea el texto indique
#"Se ignreso la palabra P

#Validar cantidad argumentos
[[ $# -ne 3 ]] && echo "La cantidad de argumentos no es válida" && exit 1

[ $2 -le 0 ] && echo "El numero debe ser positivo" && exit 1

[ ! -w $3 ] && echo "No hay permiso de escritura" && exit 1

touch "$3palabra_$1.dat"
echo -n > "$3palabra_$1.dat"

for NUM in $(seq $2);
do
	echo "Se ingresó la palabra $1" >> "$3palabra_$1.dat"
done
exit 0

