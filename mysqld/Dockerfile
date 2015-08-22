FROM centos:latest

RUN yum update -y
RUN yum install -y mariadb-server sysvinit-tools

RUN mysql_install_db --user=mysql

EXPOSE 3306

ADD entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]
