#!/bin/bash
echo "Respaldador de archivos"
read -p "Ingresa el directorio a respaldar: " fuente
if [ -d $fuente ]; then
    read -p "Ingresa el directorio de destino: " destino
    if [ -d $destino ]; then
        find $fuente -exec cp -r {} $destino \;
    else
        echo "Directorio de destino inexitente."
    fi
else
    echo "El directorio a respaldar no existe"
fi
