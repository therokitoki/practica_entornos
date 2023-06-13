!/bin/bash
#I.2) Crear un script para mostrar por pantalla los números pares del n al 2.
#n es un argumento recibido por la línea de comandos y
#debe ser un entero mayor a 2

#Verificaciones
[ $# -ne 1 ] &&  echo "Debe ser un solo argumento" && exit 1 || [ $1 -le 2 ] && 
echo "Numero no valido" && exit 1

for NUM in $(seq $1 -1 2);
do
	if [ $(($NUM % 2)) -eq 0 ]
	then
		echo $NUM
	fi

done
exit 0

