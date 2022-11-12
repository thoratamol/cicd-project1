FROM centos:latest
MAINTAINER thoratamol@gmail.com
RUN yum install -y httpd \
zip \
ADD https://www.free-css.com/assets/files/free-css-templates/download/page285/bitcypo.zip /var/www/html
WORKDIR /var/www/html
RUN unzip bitcypo.zip
RUN cp -rvf bitcypo-html/* .
CMD ["/usr/sbin/httpd", "D", "FOREGROUND"]
EXPOSE 8002
