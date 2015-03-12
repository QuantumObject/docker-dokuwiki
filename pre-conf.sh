#!/bin/bash
set -e

 #apache2 conf
 a2enmod rewrite
 chown -R www-data:www-data /var/www/dokuwiki
 sed -i 's/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/dokuwiki/' /etc/apache2/sites-enabled/000*.conf
 
 rm -R /var/www/html/
 
 #to fix error relate to ip address of container apache2
 echo "ServerName localhost" | sudo tee /etc/apache2/conf-available/fqdn.conf
 ln -s /etc/apache2/conf-available/fqdn.conf /etc/apache2/conf-enabled/fqdn.conf
