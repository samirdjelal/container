FROM nginx:stable-alpine

ENV NGINXUSER=laravel
ENV NGINXGROUP=laravel

#RUN mkdir -p /var/www/html/public

ADD docker/nginx/default.conf /etc/nginx/conf.d/default.conf

#ADD docker/nginx/certs/fullchain.pem /etc/nginx/certs/fullchain.pem
#ADD docker/nginx/certs/privkey.pem /etc/nginx/certs/privkey.pem

#RUN sed -i "s/user www-data/user ${NGINXUSER}/g" /etc/nginx/nginx.conf
#RUN adduser -g ${NGINXUSER} -s /bin/sh -D ${NGINXUSER}