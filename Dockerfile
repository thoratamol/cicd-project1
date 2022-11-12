FROM centos:latest
MAINTAINER thoratamol@gmail.com
RUN yum install -y httpd \
zip \
ADD https://www.free-css.com/assets/files/free-css-templates/download/page284/mical.zip
WORKDIR /var/www/html
RUN unzip mical.zip
RUN cp -rvf mical-html/* .
RUN rm -rf _MACOSX
CMD ["/usr/sbin/httpd", "D", "FOREGROUND"]
EXPOSE 80
