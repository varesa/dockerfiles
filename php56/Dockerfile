FROM centos:latest

MAINTAINER Esa Varemo <esa@kuivanto.fi>

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

RUN yum update -y
RUN yum install -y httpd php56w php56w-opcache

ADD conf.d /etc/httpd/conf.d
ADD index.php /var/www/html/index.php
EXPOSE 80 443

ENTRYPOINT httpd -DFOREGROUND
