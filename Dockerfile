FROM ubuntu:18.04
MAINTAINER romaricfosso (romaricfosso6@gmail.com)
RUN apt-get update
RUN apt-get install nginx -y 
EXPOSE 80 
ADD * /var/www/html/
CMD [  "nginx", "-g", "daemon off;"]
