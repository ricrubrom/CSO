#!/bin/bash

suma(){
  res=$(expr $1 + $2)
  echo "El resultado de la suma es: $res"
}

resta(){
  res=$(expr $1 - $2)
  echo "El resultado de la resta es: $res"
}

mult(){
  res=$(expr $1 \* $2)
  echo "El resultado de la multiplicacion es: $res"
}

div(){
  res=$(expr $1 / $2)
  echo "El resultado de la division es: $res"
}

mod(){
  res=$(expr $1 % $2)
  echo "El resultado del modulo es $res"
}

max(){
  if [ $1 -eq $2 ]
  then
    echo "$1=$2"
  else
    if [ $1 -gt $2 ]
    then
      echo "$1>$2"
    else
      echo "$2>$1"
    fi
  fi
}


if [ $# -ne 3 ]
then
  echo "No se enviaron la cantidad correcta de operaciones"
  exit
fi

case $2 in
"+")
  suma $1 $3
  ;;
"-")
  resta $1 $3
  ;;
"*")
  mult $1 $3
  ;;
"/")
  div $1 $3
  ;;
"m")
  max $1 $3
  ;;
*)
  echo "Operacion erronea"
esac

