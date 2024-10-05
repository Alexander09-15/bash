#!/bin/bash
funcion(){       #Se define la funcion
    if (( $1 % 2 == 0 )); then # Codigo en la funcion, $1 es para el primer argumento, $2 para el segundo, etc
        echo "Es par"
    else
        echo "Es impar"
    fi
}
read -p "Ingresa un numero: " numero
funcion $numero # Se llama la funcion y se le da un parametro ($1)

edad(){
    if [[ $? -ne 0 ]]; then
        echo "No ingresaste una edad valida"
    elif (( $1 % 2 == 0 )); then
        echo "Tu edad es par"
    else
        echo "Es impar"
    fi
}
read -p "Ingresa tu edad: " edad
edad $edad
