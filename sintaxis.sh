#!/bin/bash

variable=1 #Declaracion de variables
texto="Esto es un texto"

echo $variable  #Para usar una variable se debe usar $ seguido del nombre
# echo es para mostrar informacion en la pantalla

# + - / * %  son usados para hacer operaciones

# -gt greater than (mayor que)   >  |    -ge greater equal (mayor o igual que) >=
# -lg less than (menor que)   <   |    -le less equal (menor o igual que) <=
# -eq equal (igual que) ==   |   -ne not equal (no es igual que) !=

if [[ $variable -lt 5 ]]; then #Uso del condicional if, los [[ ]] se usan mas para texto, en cambio los (( )) mas para operaciones aritmeticas
    echo "Es menor que 5"
fi
# Al usar doble [[ ]] o (( )) no es necesario poner -gt por ejemplo si no se puede poner directamente (>)

if [[ $variable < 5 ]]; then # De esta forma es valido al usar doble [ ]
    echo "Es menor que 5"
fi
