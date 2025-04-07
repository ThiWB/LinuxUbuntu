#!/bin/bash

#Mensagem de Início
echo "Iniciando criação de Usuários, Diretórios, Grupos e Permissões..."


#Criando os Diretórios necessários
mkdir ../publico/
mkdir ../adm/
mkdir ../ven/
mkdir ../sec/

#Criando Grupos necessários
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#Criando Usuários e os inserindo nos grupos

#Usuários do grupo ADM
useradd carlos -c "Carlos-ADM" -m -s /bin/bash -p $(openssl passwd Senha123)
usermod -G GRP_ADM carlos

useradd maria -c "Maria-ADM" -m -s /bin/bash -p $(openssl passwd Senha123)
usermod -G GRP_ADM maria

useradd joao -c "João-ADM" -m -s /bin/bash -p $(openssl passwd Senha123)
usermod -G GRP_ADM joao

#Usuários do grupo VEN
useradd debora -c "Debora-VEN" -m -s /bin/bash -p $(openssl passwd Senha123)
usermod -G GRP_VEN debora

useradd sebastiana -c "Sebastiana-VEN" -m -s /bin/bash -p $(openssl passwd Senha123)
usermod -G GRP_VEN sebastiana

useradd roberto -c "Roberto-VEN" -m -s /bin/bash -p $(openssl passwd Senha123)
usermod -G GRP_VEN roberto

#Usuário do grupo SEC
useradd josefina -c "Josefina-SEC" -m -s /bin/bash -p $(openssl passwd Senha123)
usermod -G GRP_SEC josefina

useradd amanda -c "Amanda-SEC" -m -s /bin/bash -p $(openssl passwd Senha123)
usermod -G GRP_SEC amanda

useradd rogerio -c "Rogério-SEC" -m -s /bin/bash -p $(openssl passwd Senha123)
usermod -G GRP_SEC rogerio

#Alterando permissões de Diretórios
chown root:GRP_VEN /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec

chmod 777 /publico

#Mensagem de Conclusão
echo "Concluído com Sucesso!"