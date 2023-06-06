# Openfire-docker
Docker for Openfire XMPP-server. Easy installation. The original distribution kit is used without any changes.  
The current version of Openfire is 4.7.5.

## Installation:
Go to the directory with the files to create the container `cd [you/dir]`.
1. Create an image.
```
docker build -t occisor/openfire:4.7.5 .
```
2. Create a container
```
docker compose up
```
After installing the container, follow the link http://you.server:9090, where `you.server` should be changed to the name or ip of your server and perform the initial setup.
At your discretion stop the container `docker compose stop`, to run in the background, use `docker compose start`.
