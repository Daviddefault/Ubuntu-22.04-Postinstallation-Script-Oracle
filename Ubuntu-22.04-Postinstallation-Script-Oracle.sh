#!/bin/bash

#Update
sudo apt update && sudo apt upgrade -y

#Configurar el Firewall para Oracle
sudo ufw disable
sudo apt install firewalld -y

#Abre los puertos 80, 443, 8080
sudo firewall-cmd --permanent --zone=public --add-port=80/tcp
sudo firewall-cmd --permanent --zone=public --add-port=443/tcp
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload

echo "Configuración inicial finalizada, reiniciado el equipo"

sudo reboot