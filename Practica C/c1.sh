#!/bin/bash
#C1
#Crear un script que reciba la ruta absoluta a un archivo
# e  indique si existe
# o no y si se trata de un arcvhio regular o un direct
#primero chequeo si hay un solo  argumento de entrada

if [ $# -eq 1 ]
then
	if [ -e $1 ]
#con los verificadores va el verificador y dsp lo que va a verificar
#el chequeo de qué tipo de archivo es ya de por si revisa si existe o no, podriamos usar uno solo
	then 
		echo -n  "Archivo $1  existe "
		if [ -f $1 ]
		then
			echo "y es un archivo regular"
		elif [ -d $1 ]
		then
			echo "y es un directorio."
		else
			echo "pero no es regular ni un directorio."
		fi
	else
		echo "El archivo $1 no existe."
	
	fi
else
	echo "Cantidad de argumentos esperados: 1"
	echo "Cantidad de argumentos recibidos: $#"
	exit 1
fi

exit 0

