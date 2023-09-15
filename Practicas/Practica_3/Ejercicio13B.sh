#!/bin/bash

select op in Listar DondeEstoy QuienEsta
do
    case $op in
    "Listar")
        ls -la .
        ;;
    "DondeEstoy")
        pwd
        ;;
    "QuienEsta")
        whoami
        ;;
    *)
        echo "Adios"
        break
        ;;
    esac
done