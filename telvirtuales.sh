#!/bin/bash

echo -e "\e[1;32m
░██████╗░███████╗███╗░░██╗
██╔════╝░██╔════╝████╗░██║
██║░░██╗░█████╗░░██╔██╗██║
██║░░╚██╗██╔══╝░░██║╚████║
╚██████╔╝███████╗██║░╚███║
░╚═════╝░╚══════╝╚═╝░░╚══╝

████████╗███████╗██╗░░░░░
╚══██╔══╝██╔════╝██║░░░░░
░░░██║░░░█████╗░░██║░░░░░
░░░██║░░░██╔══╝░░██║░░░░░
░░░██║░░░███████╗███████╗
░░░╚═╝░░░╚══════╝╚══════╝

██╗░░░██╗██╗██████╗░████████╗
██║░░░██║██║██╔══██╗╚══██╔══╝
╚██╗░██╔╝██║██████╔╝░░░██║░░░
░╚████╔╝░██║██╔══██╗░░░██║░░░
░░╚██╔╝░░██║██║░░██║░░░██║░░░
░░░╚═╝░░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░\e[0m"



echo -e "\e[1;34mGENERADOR DE NUMEROS TELEFÓNICOS VIRTUALES USA AND MX

QUILLO83\e[0m"


# Pide al usuario que ingrese el país
echo "Ingresa el código de país (ej: +1 para Estados Unidos, +52 para México):"
read country_code

# Pide al usuario que ingrese la cantidad de números a generar
echo "Ingresa la cantidad de números a generar:"
read num_numbers

# Genera los números de teléfono virtuales
for i in $(seq 1 $num_numbers); do
    # Genera un número aleatorio de 10 dígitos
    phone_number="${country_code}$(shuf -i 1000000000-9999999999 -n 1 | sed 's/^0*//')"
    echo "$phone_number"
done