#!/bin/bash

for((i=1 ; i<=100 ; i++))
do
    res=$(expr $i \* $i)
    echo "n= $i  n^2=$res"
done