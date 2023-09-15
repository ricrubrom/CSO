#!/bin/bash

# Verificar si se proporcionó el directorio y la cadena como argumentos

if [ $# -ne 3 ]; then
    echo "Uso: $0 directorio [-a|-b] cadena"
    exit 1
fi

directorio="$1"
opcion="$2"
cadena="$3"

# Verificar si el directorio existe

if [ ! -d "$directorio" ]; then
    echo "El directorio $directorio no existe."
    exit 1
fi

# Iterar sobre los archivos en el directorio

for archivo in "$directorio"/*
do
    if [ -f "$archivo" ]; then
        nombre_archivo=$(basename "$archivo")
        extension="${nombre_archivo##*.}"
        nombre_sin_extension="${nombre_archivo%.*}"

        nuevo_nombre=""

        if [ "$opcion" = "-a" ]; then
            nuevo_nombre="${nombre_sin_extension}${cadena}.${extension}"
        elif [ "$opcion" = "-b" ]; then
            nuevo_nombre="${cadena}${nombre_sin_extension}.${extension}"
        else
            echo "Opción no válida: $opcion"
            exit 1
        fi

        # Renombrar el archivo
        mv "$archivo" "$directorio/$nuevo_nombre"
        echo "Renombrado: $archivo -> $directorio/$nuevo_nombre"
    fi
done