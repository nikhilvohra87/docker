FROM centos
MAINTAINER Nikhil Vohra "mail.nikhilvohra@gmail.com"
RUN yum update
RUN yum install -y httpd
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/httpd
ADD . /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
