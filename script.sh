#!/bin/bash

echo "Atualizando repositórios..."
sleep 3
apt update
apt upgrade
echo "Repositórios atualizados !"

echo "Instalando Apache..."
sleep 3
apt install apache2
echo "Apache instalado !"

echo "Instalando unzip..."
sleep 3
apt install unzip
echo "Unzip instalado !"

cd /tmp
echo "Baixando o repositório do professor Denilson Bonatti..."
sleep 3
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Descompactando e copiando arquivos para diretório Apache..."
sleep 3
unzip main.zip
cd linux-site-dio-main
cp -r -v * /var/www/html

echo "Script finalizado :)"
sleep 4

