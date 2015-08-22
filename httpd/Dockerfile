FROM centos:latest

RUN yum update -y
RUN yum install -y httpd

EXPOSE 80 443

ENTRYPOINT httpd -DFOREGROUND
