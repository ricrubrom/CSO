#!/bin/bash

push(){
    pila[${#pila[@]}]=$1
}

pop(){
    if [ ${#pila[@]} -eq 0 ]
    then
        echo "La pila se encuentra vacia"
    else
        unset pila[$(expr ${#pila[@]} - 1)]
    fi
}

length(){
    echo ${#pila[@]}
}

print(){
    echo ${pila[@]}
}

push 1
push 2
push 3
push 4
push 5
push 6
push 7
push 8
push 9
push 10

pop
pop
pop

length

print

