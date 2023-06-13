#!/bin/bash
#I.3) Crear un script que reciba como argumentos una cantidad de palabras.
#El script debe determinar cuántas palabras son y cuántas de ellas tienen
#al menos 3 caracteres.
#En caso de no suministrarse argumentos, deberá indicar que sin argumentos
#el script no puede generar resultados.
PAL_TRES=0
if [ $# -eq 0 ]
	then
		echo "Deberá ingresar al menos un argumento"
	else
		echo "Cantidad de palabras: $#"
		for PAL in $@;
			do
			LENGTH=${#PAL}
			if [[ $LENGTH -ge 3 ]]
			then
				PAL_TRES=$(($PAL_TRES + 1))
			fi
			done
		echo "Cantidad de palabras con mas de 3 caracteres: $PAL_TRES"
fi

exit 0
