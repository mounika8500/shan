FROM centos

MAINTAINER sai@hcl.com

RUN yum install httpd -y

COPY index.html /var/www/html/food-master

WORKDIR /var/www/html

EXPOSE 80:8080

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]


