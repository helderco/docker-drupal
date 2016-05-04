FROM helder/php:5.3
MAINTAINER Helder Correia <me@heldercorreia.com>

# Install drush globally
RUN apt-install mysql-client && \
    docker-php-ext-install pcntl
RUN gosu www-data composer global require drush/drush:7.*

COPY drush.sh /docker-entrypoint-init.d/
