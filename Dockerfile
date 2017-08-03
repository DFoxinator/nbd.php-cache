FROM bryanlatten/docker-php:7.0-12.0
MAINTAINER Bryan Latten <latten@adobe.com>

RUN phpenmod redis
COPY ./ /app

RUN cd /app && composer install
