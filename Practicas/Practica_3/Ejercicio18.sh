#!/bin/bash

if [ $# != 1 ]
then
    echo "Parametros erroneos"
    exit 1
fi

while true
do
    sleep 10
    who | grep -q "$1"
    if [ $? == 0 ]
    then
        echo "Usuario $1 logueado en el sistema"
        exit 0
    fi
done