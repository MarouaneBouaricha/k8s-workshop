#list running containers
docker ps

#creating first container
docker run hello-world

#list images
docker images

#list stopped containers
docker ps -a

#creating a nginx container
docker run --name=webserver nginx

#run a container and delete it when hitting CTRL+C
docker run --name=webserver --rm nginx

#run a container in the background
docker run -d --name=webserver nginx

#expose port to host
docker run -d -p 5000:80 --name=webserver nginx

#create a file inside a container
docker exec -it webserver /bin/bash

#modify the html file
apt update
apt install nano
nano /usr/share/nginx/html/index.html
nginx -s reload

#creating a container with volume
docker run -d -p 5000:80 -v ./data:/data --name=webserver nginx

#build an image
docker build -t myqpp .

#run container from image
docker run -d --name=myapp -p 5000:5000 myapp:latest