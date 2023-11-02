#!/bin/bash

# Mostramos los comandos que se van a ejecutar.

set -x

#Actualizamos los repositorios.

apt update

#Actualizamos los paquetes instalados a sus últimas versiones.

# apt upgrade -y

# Importamos el archivo .env.

source .env

# Creamos el certificado autofirmado
openssl req \
  -x509 \
  -nodes \
  -days 365 \
  -newkey rsa:2048 \
  -keyout /etc/ssl/private/apache-selfsigned.key \
  -out /etc/ssl/certs/apache-selfsigned.crt \
  -subj "/C=$OPENSSL_COUNTRY/ST=$OPENSSL_PROVINCE/L=$OPENSSL_LOCALITY/O=$OPENSSL_ORGANIZATION/OU=$OPENSSL_ORGUNIT/CN=$OPENSSL_COMMON_NAME/emailAddress=$OPENSSL_EMAIL"

# Copiamos el archivo de VirtualHost de SSL/TLS

cp ../conf/default-ssl.conf /etc/apache2/sites-available

# Habilitamos el VirtualHost que acabamos de configurar.

a2ensite default-ssl.conf

# Habilitamos el módulo SSL en Apache.

a2enmod ssl

# Copiamos el archivo de VirtualHost de HTTP

cp ../conf/000-default.conf /etc/apache2/sites-available

# Habilitamos el módulo rewrite

a2enmod rewrite

# Reiniciamos el servidor Apache.

systemctl restart apache2