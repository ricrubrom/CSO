#!/bin/bash

num=(10 3 5 7 9 3 5 4)

productoria(){
    resultado=1
    for i in "${num[@]}"
    do
        resultado=$(expr $i \* $resultado)
    done
    echo $resultado
}

productoria



