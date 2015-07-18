
#!/bin/bash
#this for reference only to create the backup scrips for each container ... the idea to use the same command for each container
#each container will have their own custum backup scritp for it ...

#create a new docker folder or delete all backup file if already present

if [ -d "/var/backups/docker" ]; then
  rm -R /var/backups/docker
fi


if [ -d "/var/www/dokuwiki/data/media/wiki/backup.tar.gz" ]; then
  rm /var/www/dokuwiki/data/media/wiki/backup.tar.gz
fi

mkdir  /var/backups/docker

#Backup important file ... of the configuration ...
cp  /etc/hosts  /var/backups/docker/

#Backup importand files relate to app

cp -R /var/www/dokuwiki/conf  /var/backups/docker
cp -R /var/www/dokuwiki/data/pages  /var/backups/docker
cp -R /var/www/dokuwiki/data/meta  /var/backups/docker
cp -R /var/www/dokuwiki/data/media  /var/backups/docker
cp -R /var/www/dokuwiki/data/media_meta  /var/backups/docker
cp -R /var/www/dokuwiki/data/attic  /var/backups/docker

cd /tmp
tar -zcvf backup.tar.gz /var/backups/docker
cp backup.tar.gz /var/www/dokuwiki/data/media/wiki/
rm backup.tar.gz


