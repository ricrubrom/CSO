#!/bin/bash

echo "Menu de Comandos:"
echo "Inserte archivo a ejecutar"

select opcion in $(ls | grep .sh) Limpiar Salir
do
    if [ -f $opcion ]
    then
        ./$opt
    fi
    if [ $opt == Salir ]
    then
        break
    fi
    if [ $opt == Limpiar ]
    then
        clear
    fi
done