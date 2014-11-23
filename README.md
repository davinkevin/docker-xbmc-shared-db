docker-xbmc-shared-db
=====================

Docker container to be used by XBMC client for a multi client XBMC usage

## Building the container :
docker build -t xbmc-db .

## Running the container
docker run -it -d -p 3306:3306 --name xbmc-db xbmc-db
