#!/bin/bash

num=(1 2 3 4 5 6 7 8 9 10)

echo "Los numeros pares son: "

for i in ${num[@]}
do
    if [ (expr $i % 2) -eq 0 ]
    then
        echo $i
    fi
    else
        cont=$(expr $cont + 1)
    fi
done

echo "Hay $cont numeros impares"
