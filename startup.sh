#!/bin/bash

set -e

#in case Volume are empty
if [ "$(ls -A /var/www/dokuwiki/conf)" ]; then
    echo "conf folder with data"    
else
    cp -Rp /var/backups/conf/* /var/www/dokuwiki/conf/ 
    chown www-data:www-data /var/www/dokuwiki/conf
fi
# for the other folder Volume
if [ "$(ls -A /var/www/dokuwiki/data)" ]; then
    echo "data folder with data"    
else
    cp -Rp /var/backups/data/* /var/www/dokuwiki/data/ 
    chown www-data:www-data /var/www/dokuwiki/data
fi

# if already configured continue
if [ -f /etc/configured ]; then
        echo 'already configured'
else
      #code that need to run only one time ...
        mv /var/www/dokukiki/.htaccess.dist /var/www/dokukiki/.htaccess
        a2enmod rewrite
        #needed for fix problem with ubuntu and cron
        update-locale 
        date > /etc/configured
fi
