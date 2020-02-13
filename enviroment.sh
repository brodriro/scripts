#!/bin/bash

variable=$1

 
echo "Variable de entorno" $variable
echo "Ingrese el contenido de la variable:"
read variableDescription

variable="$variableDescription"

echo $variable
export $variable

exit 0