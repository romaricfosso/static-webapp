FROM ubuntu:18.04
MAINTAINER romaricfosso (romaricfosso6@gmail.com)
RUN apt-get update
RUN apt-get install git nginx -y 
EXPOSE 80 
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/romaricfosso/static-webapp.git /var/www/html/
CMD [  "nginx", "-g", "daemon off;"]
