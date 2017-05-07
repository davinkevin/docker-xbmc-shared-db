FROM debian:wheezy

MAINTAINER DAVIN Kevin <davin.kevin@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y mysql-server
RUN rm -rf /var/lib/apt/lists/* 
RUN sed -ri 's/^(bind-address\s*=\s*)([0-9\.]+)/\10.0.0.0/g' /etc/mysql/my.cnf

ADD add_xbmc_user.sh /add_xbmc_user.sh

RUN	chmod +x /add_xbmc_user.sh
RUN /add_xbmc_user.sh

VOLUME /var/lib/mysql

EXPOSE 3306

CMD ["mysqld"]
