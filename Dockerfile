FROM php:7.2-apache
COPY discuz/* /var/www/html/
WORKDIR /var/www/html
# 改为阿里源
RUN chmod 777 -R /var/www/html
EXPOSE 80
ENTRYPOINT [ "source", "/etc/apache2/envvars"]
ENTRYPOINT [ "apache2", "-D", "FOREGROUND"]