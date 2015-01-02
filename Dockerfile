FROM debian:squeeze
MAINTAINER Peter Suschlik <peter@suschlik.de>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update
RUN apt-get -qq install apache2 php5 libapache2-mod-php5
RUN apt-get -qq install php5-mysql php5-json php5-curl
RUN apt-get clean

EXPOSE 80

CMD /usr/sbin/apache2ctl -D FOREGROUND
