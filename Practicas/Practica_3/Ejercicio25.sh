#!/bin/bash

users=$(getent group wheel | cut -d ':' -f 4)

IFS=' ',

arr=()

for i in $users
do
    arr[${#arr[@]}]=$i
done

while getopts "b:li" opcion; do
    case $opcion in
        b)
            opt="$OPTARG"
            if [ $opt -le ${#arr[@]} ]; then
                echo ${arr[$(expr $opt - 1)]}
            else
                echo Fuera de rango
            fi
            ;;
        l)
            echo La longitud del arreglo es ${#arr[@]}
            ;;
        i)
            echo ${arr[@]}
            ;;
        \?) 
            exit 1 
            ;;
    esac
done