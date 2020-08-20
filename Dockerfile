FROM php:7.3-apache
COPY upload/ /var/www/html/

RUN cd /usr/local/bin \
    && ./docker-php-ext-install pdo_mysql \
    && ./docker-php-ext-install mysqli \
    && cd /var/www/html/ \
    && chmod 777 -R /var/www/html



#WORKDIR /var/www/html
## 改为阿里源
#RUN chmod 777 -R /var/www/html
EXPOSE 80
EXPOSE 3306
EXPOSE 443
#ENTRYPOINT [ "source", "/etc/apache2/envvars"]
#ENTRYPOINT [ "apache2", "-D", "FOREGROUND"]
