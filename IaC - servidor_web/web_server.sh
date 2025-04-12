#!/bin/bash

echo "Atualização em Andamento!"

#Atualizando Lista de Pacotes Disponíveis
echo "Atualizando Lista de Pacotes Disponíveis..."
apt update -y

#Atualizando Sistema Operacional
echo "Atualizando Sistema Operacional..."
apt upgrade -y

#Atualizando Pacotes que não são mais utilizados
echo "Atualizando Pacotes fora de Data..."
apt dist-upgrade -y

#Remoção de Pacotes não Necessários
echo "Removendo Pacotes não utilizados..."
apt autoremove -y

echo "ATUALIZAÇÕES CONCLUÍDAS COM SUCESSO!"

#Instalação do apache2
echo "Instalando apache2..."
apt install apache2 -y
echo "APACHE2 INSTALADO COM SUCESSO!"

#Instalação do unzip
echo "Instalando unzip..."
apt install unzip -y
echo "UNZIP INSTALADO COM SUCESSO!"

#Trocando de Diretório para Baixar Aplicação Web
cd /tmp

#Baixando & Descompactando Aplicação disponível no GitHub
echo "Baixando Aplicação Web Disponível no GitHub..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "APLICAÇÃO WEB BAIXADA COM SUCESSO!"

echo "Descompactando Aplicação Web"
unzip main.zip
echo "APLICAÇÃO WEB DESCOMPACTADA COM SUCESSO!"

cd linux-site-dio-main

#Copiando Arquivos para Diretório do apache2
echo "Copiando Arquivos Web para Diretório Apache2..."
cp -R * /var/www/html
echo "CÓPIA CONCLUÍDA COM SUCESSO!"

#Mensagem de Encerramento (Concluído com Sucesso)
echo "SCRIPT CONCLUÍDO COM SUCESSO!"

