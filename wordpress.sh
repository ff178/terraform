#!/bin/bash

# Update and Install components
apt-get update
apt-get install -y apache2
apt-get install -y mysql-server
apt-get install -y php php-mysql libapache2-mod-php

# Download and setup WordPress
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
cp -r wordpress/* /var/www/html/
chown -R www-data:www-data /var/www/html/
chmod -R 755 /var/www/html/

# Restart Apache
systemctl restart apache2
