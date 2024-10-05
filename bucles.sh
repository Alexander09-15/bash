#!/bin/bash
for i in {1..5}; do #Iterar en un rango
    echo "Numero $i"
done

nombres=("Juan" "Andres" "Pedro")
for x in "${nombres[@]}"; do #Iterar en una lista
    echo "Nombre: $x"
done

contador=0
while [[ $contador -le 5 ]]; do #Aumentar el contador
    echo "$contador"
    contador=$((contador+1))
done

cont=0
while true; do #Bucle infinito y uso de break
    echo "$cont"
    cont=$((cont+1))
    if [[ $cont -gt 10 ]]; then
        break
    fi
done

