FROM ubuntu:latest
MAINTAINER puri
RUN apt update
RUN apt -y install httpd
COPY index.html /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
