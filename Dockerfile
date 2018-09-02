FROM centos:7

RUN yum install -y epel-release yum-utils \
    yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm
    

RUN yum-config-manager --enable remi-php71

RUN yum install -y php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysql

COPY pdo/ /var/www/html 

EXPOSE  80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]