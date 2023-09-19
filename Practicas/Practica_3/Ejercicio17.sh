#!/bin/bash

for var in $(ls $(pwd))
do
    echo $var | tr '[:lower:][:upper:]' '[:upper:][:lower:]' | tr -d 'Aa'
done