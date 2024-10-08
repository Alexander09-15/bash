#!/bin/bash
echo "CONTADOR DE ARCHIVOS"	
read -p "Ingresa el directorio a contar: " directorio
while [[ ! -d "$directorio" ]]; do
    read -p "Ingresa un directorio valido: " directorio
done
ls $directorio | wc -l

