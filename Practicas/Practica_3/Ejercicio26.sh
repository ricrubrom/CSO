#!/bin/bash

if [$# -ne 0]
then
    echo "Parametros erroneos"
fi

for i in $@
do
    j=$(expr $j + 1)
    if [ $(expr $j % 2) -eq 0 ]
    then
        continue
    fi
    if [ -f $i ]
    then
        continue
    fi
    cant=$(expr $cant + 1)
done

echo "La cantidad de archivos inexistentes son $cant"