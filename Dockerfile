FROM centos
RUN yum update
RUN yum install httpd -y
ADD . /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
