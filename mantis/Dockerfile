FROM oma/php56

MAINTAINER Esa Varemo <esa@kuivanto.fi>

ENV MANTIS_URL="http://downloads.sourceforge.net/project/mantisbt/mantis-stable/1.2.19/mantisbt-1.2.19.tar.gz?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fmantisbt%2Ffiles%2Fmantis-stable%2F1.2.19%2F&ts=1440572776&use_mirror=skylink"

RUN yum install -y wget
WORKDIR /var/www/html/
RUN wget $MANTIS_URL -O mantis.tgz && tar zxvf mantis.tgz && rm mantis.tgz
RUN mv mantisbt-1.2.19/* ./ && rm -r mantisbt-1.2.19
