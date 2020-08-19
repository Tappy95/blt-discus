FROM php:7.2-apache
WORKDIR /
# 改为阿里源
RUN rm -rf /etc/apt/sources.list
COPY sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y --allow-unauthenticated git
RUN git clone https://gitee.com/ComsenzDiscuz/DiscuzX.git
RUN rm -rf /var/www/html
RUN mv /DiscuzX/upload /var/www/html
RUN rm -rf /DiscuzX
RUN chmod 777 -R /var/www/html
RUN docker-php-ext-install mysqli