#!/bin/bash
#Crear un script que reciba exactamente dos argumentos, el primero
#corresponder� a un n�mero de mes y el segundo a un a�o.
#Deber� mostrar por pantalla el calendario del mes y a�o con el d�a destacado
#Tip: analizar el comando cal
#Nota: evitaremos por ahora la validaci�n de la cantidad
#y valor de los argumentos enviados

if [ $# -ne 2 ]
then
	echo "Cantidad erronea de argumentos. Deben ser 2."
	exit 1
else
	ncal $1 $2
	exit 0
fi
