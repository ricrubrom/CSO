#!/bin/bash

arr1=(1 2 3 4 5 6 7 8 9)
arr2=(9 9 9 9 9 9 9 9 9)

for ((i = 0; i < ${#arr1[@]}; i++))
do
    echo "La suma de los elementos de la posición $i de los vectores es $(expr ${arr1[$i]} + ${arr2[$i]})"
done
