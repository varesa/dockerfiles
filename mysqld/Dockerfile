FROM centos:latest

RUN yum update -y
RUN yum install -y mariadb-server

RUN mysql_install_db --user=mysql

EXPOSE 3306

ENTRYPOINT mysqld_safe
