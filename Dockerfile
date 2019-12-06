FROM centos:latest
MAINTAINER NewstarCorporation
RUN yum install -y nginx
COPY index.html /www/data/
ENTRYPOINT ["/usr/sbin/nginx", "-D", "FOREGROUND"]
EXPOSE 80
