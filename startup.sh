#!/bin/bash

set -e

#in case Volume are empty
if [ "$(ls -A /var/www/dokuwiki/conf)" ]; then
    echo "conf folder with data"    
else
    cp -Rp /var/backups/conf/* /var/www/dokukiki/conf/ 
    chown www-data:www-data /var/www/dokukiki/conf
fi
# for the other folder Volume
if [ "$(ls -A /var/www/dokuwiki/data)" ]; then
    echo "data folder with data"    
else
    cp -Rp /var/backups/data/* /var/www/dokukiki/data/ 
    chown www-data:www-data /var/www/dokukiki/data
fi

# if already configured continue
if [ -f /etc/configured ]; then
        echo 'already configured'
else
      #code that need to run only one time ...
        
        #needed for fix problem with ubuntu and cron
        update-locale 
        date > /etc/configured
fi
