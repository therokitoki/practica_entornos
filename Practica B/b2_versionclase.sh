#!/bin/bash

if [ $# -ne 2 ]
then
	echo "Cantidad erronea de argumentos. Deben ser 2."
	exit 1
else

	VAR_MES=$1
	VAR_ANIO=$2

	echo "$(ncal $VAR_MES $VAR_ANIO)"

	exit 0
fi
