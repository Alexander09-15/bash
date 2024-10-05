variable="Hola, alex"
echo $variable

num_uno=5
num_dos=10
resultado=$(($num_uno+$num_dos))
echo "$resultado"

num_tres=25.9
num_cuatro=25.4
resultado2=$(echo "$num_tres+$num_cuatro" | bc)
echo "$resultado2"
