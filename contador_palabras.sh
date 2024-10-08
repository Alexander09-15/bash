#!/bin/bash
read -p "Ingresa el archivo a contar: " archivo
while [[ ! -f "$archivo" ]]; do
    read -p "Ingresa un archivo valido, asegurate de estar en el mismo directorio: " archivo
done
wc -w "$archivo"
