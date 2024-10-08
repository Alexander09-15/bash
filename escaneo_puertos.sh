#!/bin/bash
read -p "Digita la ip a escanear: " ip
if [[ "$ip" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
	IFS="." read -r i1 i2 i3 i4 <<< "$ip"
	if (( "$i1" <= 255 && "$i2" <= 255 && "$i3" <= 255 && "$i4" <= 255 )); then
		read -rp "Quieres escanear todos los puertos?(y-n): " puertos
		if [[ "$puertos" == "y" ]]; then
			read -rp "Quieres escanear las versiones?(y-n): " versiones
			if [[ "$versiones" == "y" ]]; then
				read -rp "Quieres hacer un escaneo silencioso?(y-n): " sigilo 
					if [[ "$sigilo" == "y" ]]; then
						sudo nmap -p- -sS -sV $ip
					else
						sudo nmap -p- -sV $ip
					fi
			else 
				read -rp "Quieres un escaneo silencioso?(y-n): " sigilo
				if [[ "$sigilo" == "y" ]]; then
					sudo nmap -p- -sS $ip
				fi
			fi
		 else
			read -rp "Quieres escanear todas las versiones?(y-n): " versiones
			if [[ "$versiones" == "y" ]]; then
				read -rp "Quieres hacer un escaneo sigiloso?(y-n): " sigilo
				if [[ "$sigilo" == "y" ]]; then
					sudo nmap -sS -sV $ip
				else
					sudo nmap -sV $ip
				fi
			else
				read -rp "Quieres hacer un escaneo sigiloso?(y-n): " sigilo
				if [[ "$sigilo" == "y" ]]; then
					sudo nmap -sS $ip
				else
					sudo nmap $ip
				fi
			fi		

		fi
	else
		echo "Direccion ip invalida"
	fi			
else
	echo "Direccion ip invalida"
fi





