FROM debian:jessie
MAINTAINER Peter Suschlik <peter@suschlik.de>

ENV RELEASE_DATE 2015-04-01
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update
RUN apt-get -qq install apache2 php5 libapache2-mod-php5
RUN apt-get -qq install php5-mysql php5-json php5-curl php5-gd
RUN apt-get clean

VOLUME /var/www
VOLUME ["/etc/apache2/sites-available", "/etc/apache2/sites-enabled"]

EXPOSE 80

CMD /usr/sbin/apache2ctl -D FOREGROUND
