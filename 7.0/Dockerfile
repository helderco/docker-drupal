FROM helder/php:7.0
MAINTAINER Helder Correia <me@heldercorreia.com>

RUN apt-install mysql-client && \
    docker-php-ext-install pcntl

RUN composer global require drush/drush:dev-master
