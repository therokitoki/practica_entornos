#!/bin/bash

#Creo el archivo
touch /tmp/args

echo -n  > /tmp/args #vac�o el archivo

for ARG in $@
do
	echo $ARG >> /tmp/args
done

#Mostrar contenido del archivo
cat /tmp/args

exit 0

