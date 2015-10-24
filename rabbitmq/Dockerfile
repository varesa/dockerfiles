FROM centos:latest

RUN yum update -y
RUN yum install -y wget

RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

RUN wget http://packages.erlang-solutions.com/erlang-solutions-1.0-1.noarch.rpm && \
	rpm -Uvh erlang-solutions-1.0-1.noarch.rpm && \
	yum install -y erlang && \
	rm *.rpm

RUN curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.rpm.sh | bash

RUN yum install -y rabbitmq-server && rabbitmq-plugins enable rabbitmq_management --offline

ADD rabbitmq-start /usr/local/bin/rabbitmq-start
ADD rabbitmq.config /etc/rabbitmq/rabbitmq.config

CMD ["rabbitmq-start"]

EXPOSE 5672 15672

VOLUME /etc/rabbitmq/
VOLUME /var/lib/rabbitmq/
VOLUME /var/log/rabbitmq/


