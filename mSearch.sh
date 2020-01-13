#!/bin/bash

lang=$1


insertPath='Enter the address of file or directory.'
searchWord='What word do you want to search?'
fileNotFound='File or directory not found.'
wordToSearch='Indicate the word or pattern to search.'

if [ "$lang" != "EN" ];
then
    lang="ES"

    insertPath='Ingrese la direccion del archivo o carpeta.'
    searchWord='¿Que palabra desea buscar?'
    fileNotFound='Archivo o direcotrio no encontrado.'
    wordToSearch='Indique la palabra o patron a buscar.'
else
    lang="EN"
fi

echo $insertPath
read fileOrDirectory

if [ -z "$fileOrDirectory" ];
then
    echo fileNotFound
    exit 0
fi


echo $searchWord
read word

if [ -z "$word" ]
then
    echo $wordToSearch
    exit 0
fi


grep $word $fileOrDirectory -n -r -i --color -I

exit 0



# DOCUMENTACION

# GREP : 
#   -i => Realiza la busqueda sin distinguir mayusculas y minusculas.
#   -c => Muestra el numero de lineas que coinciden con el patron.
#   -r => Busqueda recursiva dentro de un directorio.
#   -n => Muestra el numero de linea donde se encuentra la coincidencia.
#   -v => Muestra las lineas donde no coincide el patron buscado.
#   --color => Colorea el patron buscado.
#   -A NUM => Mostrar el numero de lineas DESPUES de encontrar el patron.
#   -B NUM => Mostrar el numero de lineas ANTES de encontrar el patron.
#   -I => Procesa archivos binarios como si no contuvieran contenido.