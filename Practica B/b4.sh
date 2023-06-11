#!/bin/bash
#Crear un script que reciba una cantidad de argumentos (no limitado) y
#los escriba (todos juntos) en un archivo llamado /tmp/args.
#Finalmente mostrar el archivo.

#Redireccionamos la salida del echo a el archivo
echo -n > /tmp/args #Lo vaciamos
echo $@ >> /tmp/args

#Mostramos el archivo
cat /tmp/args

exit 0
