FROM php:7.3-apache
COPY upload/ /var/www/html/

RUN cd /usr/local/bin \
    && ./docker-php-ext-install pdo_mysql \
    && ./docker-php-ext-install mysqli \
    && cd /var/www/html/ \
    && chmod a+w -R config data uc_server/data uc_client/data \
    && rm -rf /var/lib/apt/lists/*



#WORKDIR /var/www/html
## 改为阿里源
#RUN chmod 777 -R /var/www/html
EXPOSE 80
#ENTRYPOINT [ "source", "/etc/apache2/envvars"]
#ENTRYPOINT [ "apache2", "-D", "FOREGROUND"]