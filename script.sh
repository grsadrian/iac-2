#!/bin/bash

echo "Atualizando repositórios..."
sleep 1
apt update
apt upgrade
echo "Repositórios atualizados !"

echo "Instalando Apache..."
sleep 1
apt install apache2
echo "Apache instalado !"

echo "Instalando unzip..."
sleep 1
apt install unzip
echo "Unzip instalado !"

cd /tmp
echo "Baixando o repositório do professor Denilson Bonatti..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Descompactando e copiando arquivos para diretório Apache..."
unzip main.zip
cd linux-site-dio
cp -r -v * /var/www/html

echo "Script finalizado :)"
sleep 2

