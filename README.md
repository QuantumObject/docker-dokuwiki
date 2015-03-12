# docker-dokuwiki
docker container running dokuwiki


To run the container ...

docker run -d -p xxxx:80 quantumobject/docker-dokuwiki

Check port and point your brownser to https://[ip]:xxxx/install.php  to initially configure your DokuWiki.

when done please execute this command for security and remove the install script ..

docker exec -it container_id after_install

for any idea how to improve this container please use this link :

[https://github.com/QuantumObject](https://github.com/QuantumObject)
