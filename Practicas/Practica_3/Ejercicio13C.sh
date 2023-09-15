#!/bin/bash

# Verificar si se proporcionó un argumento (nombre de archivo/directorio)
if [ $# -eq 0 ]; then
    echo "Por favor, proporciona un nombre de archivo/directorio como argumento."
    exit 1
fi

nombre="$1"  # Obtener el primer argumento

# Verificar si el archivo/directorio existe
if [ -e "$nombre" ]; then
    # El archivo/directorio existe
    if [ -f "$nombre" ]; then
        echo "$nombre es un archivo."
    elif [ -d "$nombre" ]; then
        echo "$nombre es un directorio."
    else
        echo "$nombre es un tipo de archivo desconocido."
    fi
else
    # El archivo/directorio no existe, crear un directorio con ese nombre
    mkdir "$nombre"
    if [ $? -eq 0 ]; then
        echo "Se ha creado el directorio $nombre."
    else
        echo "No se pudo crear el directorio $nombre."
    fi
fi