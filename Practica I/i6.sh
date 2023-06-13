#!/bin/bash
#Crear un script que reciba como argumento un directorio, deberá validarse
#que exista y se tenga permisos para leerlo.
#Luego debe mostrar las siguientes estadísticas acerca de su contenido:
#cantidad de archivos regulares
#cantidad de directorios
#cantidad de líneas de los archivos de texto

#Validación existencia y permisos

[[ ! -e $1 ]] && echo  "El archivo no existe" && exit 1 || [[ ! -d $1 ]] &&
echo "El archivo debe ser un directorio" && exit 1
CANT_ARCH=0
CANT_DIR=0
CANT_LIN=0
cd $1
for ARCH in $(ls) ;
do
	echo $ARCH
	if [ -f $ARCH ]
	then
		CANT_ARCH=$(($CANT_ARCH + 1))
		CANT_LIN=$(($CANT_LIN + $(cat $ARCH | wc -l) ))
	else
		[ -d $ARCH ] && CANT_DIR=$(($CANT_DIR + 1))
	fi

done

echo "Cantidad de archivos: $CANT_ARCH"
echo "Cantidad de directorios: $CANT_DIR"
echo "Cantidad de lineas: $CANT_LIN"
