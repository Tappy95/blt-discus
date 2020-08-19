FROM richarvey/nginx-php-fpm
COPY Discuz_X3.4_SC_UTF8.zip /Discuz_X3.4_SC_UTF8.zip
#RUN curl "http://download.comsenz.com/DiscuzX/3.3/Discuz_X3.3_SC_UTF8.zip" -o /Discuz_X3.3_SC_UTF8.zip
COPY install.sh /install.sh
VOLUME /var/www/html
CMD /install.sh && /start.sh
