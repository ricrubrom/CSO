#!/bin/bash

if [ $# -ne 1]
then
    echo "Parametros erroneos"
    exit 1
fi

ext=$1

IFSOLD=$IFS
IFS=$'\n'

if [ -f "reporte.txt" ]
then
    rm reporte.txt
fi

for user in $(cut -d ":" -f 1,4,6 /etc/passwd)
do
    IFS=$':'
    read -r username id home <<< "$user"
    if [ $id -ge 1000 ] && [ $username != nobody ]
    then
        echo "Looking in $username"
        IFS=$'\n'
        i=0
        for file in $(find $home -name "*.$ext")
        do
            i=(expr $i + 1)
        done
        echo $username:i >> reporte.txt
    fi
done
