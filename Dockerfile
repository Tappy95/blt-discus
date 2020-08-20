FROM naqoda/centos-apache-php:latest
COPY upload/ /var/www/html/

RUN cd /var/www/html/ \
    && chmod 777 -R /var/www/html



#WORKDIR /var/www/html
## 改为阿里源
#RUN chmod 777 -R /var/www/html
EXPOSE 80
EXPOSE 3306
EXPOSE 443
#ENTRYPOINT [ "source", "/etc/apache2/envvars"]
#ENTRYPOINT [ "apache2", "-D", "FOREGROUND"]
#ENTRYPOINT ["server", "httpd", "restart"]