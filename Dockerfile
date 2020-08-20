FROM php:7.2-apache
COPY discuz/* /var/www/html/
WORKDIR /var/www/html
# 改为阿里源
RUN chmod 777 -R /var/www/html
EXPOSE 8000
ENTRYPOINT [ "service", "httpd", "restart"]