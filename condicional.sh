#!/bin/bash
read -p "Ingresa un numero para evaluarlo: " numero
if [ $numero -gt 0 ]; then
    echo "Es positivo"
elif [ $numero -lt 0 ]; then
    echo "Es negativo"
else 
    echo "Es cero"
fi

read -p "Ingresa tu edad: " edad
if [[ $edad -lt 13 ]]; then
    echo "Eres un niño"
elif [[ $edad -ge 13 ]] && [[ $edad -le 19 ]]; then
    echo "Eres un adolescente"
elif [[ $edad -ge 20 ]] && [[ $edad -le 64 ]]; then
    echo "Eres un adulto"
else 
    echo "Eres un adulto mayor"
fi
