# application container for MySQL
# VERSION 2014-07-14

FROM centos:latest
MAINTAINER David Xie "david.scriptfan@gmail.com"

ADD mariadb.repo /etc/yum.repos.d/mariadb.repo
ADD mariadb.sql /root/mariadb.sql
ADD server.cnf /etc/my.cnf.d/server.cnf
ADD mariadb.sh /root/mariadb.sh

RUN yum install -y hostname MariaDB-server
RUN yum clean all
RUN chmod +x /root/mariadb.sh

EXPOSE 3306

CMD ["/root/mariadb.sh"]
