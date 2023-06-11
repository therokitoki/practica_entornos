#!/bin/bash

[ $# -ne 2 ] && echo "Deben ser 2 argumentos" && exit 1

VAR_MES=$1
VAR_ANIO=$2
echo "$(ncal $VAR_MES $VAR_ANIO)"

exit 0

