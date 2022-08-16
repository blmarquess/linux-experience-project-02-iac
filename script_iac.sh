#!/bin/bash

echo "Atualizando o servidor..."
apt-get update && apt-get upgrade -y

echo "Instalando o Apache2 e unzip..."
apt-get install apache2 unzip -y

echo "Baixando projeto web..."

cd /tmp
wget -o project_web.zip https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando projeto web..."
unzip project_web.zip

echo "Movendo projeto web para a pasta /var/www/html..."
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Removendo arquivos temporarios..."
rm -rf /tmp/linux-site-dio-main
rm -rf /tmp/project_web.zip

echo "Finalizado.!"