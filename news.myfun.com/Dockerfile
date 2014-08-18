FROM centos:centos6
MAINTAINER David Xie "lxie@thoughtworks.com"

ADD start-wordpress.sh /start-wordpress.sh
ADD supervisord.conf /etc/supervisord.conf
RUN yum install -y httpd mysql-server php php-mysql python-setuptools openssh-server
RUN easy_install supervisor

RUN ["chmod", "+x", "/start-wordpress.sh"]

CMD ["/bin/bash", "/start-wordpress.sh"]