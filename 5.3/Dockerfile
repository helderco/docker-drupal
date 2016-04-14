FROM helder/php:5.3
MAINTAINER Helder Correia <me@heldercorreia.com>

RUN apt-install mysql-client && \
    docker-php-ext-install pcntl

RUN gosu www-data composer global require drush/drush:7.*
