# docker-dokuwiki

Docker container for [Dokuwiki][3]

"DokuWiki is a simple to use and highly versatile Open Source [wiki][6] software that doesn't require a database. It is loved by users for its clean and readable [syntax][7]. The ease of maintenance, backup and integration makes it an administrator's favorite. Built in [access controls][8] and [authentication connectors][9] make DokuWiki especially useful in the enterprise context and the large number of [plugins][10] contributed by its vibrant community allow for a broad range of use cases beyond a traditional wiki."

## Install dependencies

  - [Docker][2]

To install docker in Ubuntu 18.04 use the commands:

    $ sudo apt-get update
    $ sudo wget -qO- https://get.docker.com/ | sh

 To install docker in other operating systems check [docker online documentation][4]

## Usage

To run container use the command below:

    $ docker run -d -p 80:80 --name dokuwiki quantumobject/docker-dokuwiki

Check port and point your browser to http://[ip]/install.php  to initially configure your DokuWiki.

when done please execute this command for security and remove the install script:

    $ docker exec -it container_id after_install

## Volume for dokuwiki container

    /var/www/dokuwiki/conf

    /var/www/dokuwiki/data


note: deploy this container behind proxy with SSL for extra security:

https://github.com/jwilder/nginx-proxy

https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion

## More Info

About dokuwiki[www.dokuwiki.org][1]

To help improve this container [quantumobject/docker-dokuwiki][5]

For additional info about us and our projects check our site [www.quantumobject.org][11]

[1]:https://www.dokuwiki.org
[2]:https://www.docker.com
[3]:http://download.dokuwiki.org/
[4]:http://docs.docker.com
[5]:https://github.com/QuantumObject/docker-dokuwiki
[6]:http://en.wikipedia.org/wiki/Wiki
[7]:https://www.dokuwiki.org/wiki:syntax
[8]:https://www.dokuwiki.org/acl
[9]:https://www.dokuwiki.org/auth
[10]:https://www.dokuwiki.org/plugins
[11]:https://www.quantumobject.org/
