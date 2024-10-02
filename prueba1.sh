#!/bin/bash
read -p "Ingresa la ruta a buscar: " ruta
read -p "Ingresa el nombre a buscar: " nombre
read -p "Ingresa el tipo (f,d,l): " tipo
read -p "Ingresa el peso: " peso
read -p "Ingresa la palabra a buscar despues de realizar la busqueda: " palabra
find $ruta -type $tipo -name $nombre -size $peso -print0 | xargs -0 grep -li $palabra | xargs cat
