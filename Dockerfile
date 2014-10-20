FROM ubuntu:14.04
MAINTAINER Docker Education Team <education@docker.com>

RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Hi, I am in your container' \
    >/usr/share/nginx/html/index.html

ENTRYPOINT [ "nginx"]
CMD [ "-g", "daemon off;" ]

EXPOSE 80
