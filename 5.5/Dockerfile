FROM helder/php:5.5
MAINTAINER Helder Correia <me@heldercorreia.com>

# Install drush globally
RUN apt-install mysql-client && \
    docker-php-ext-install pcntl
RUN gosu www-data composer global require drush/drush:dev-master

# Install latest drupal console globally
RUN gosu www-data curl https://drupalconsole.com/installer -L -o drupal.phar && \
    mv drupal.phar /usr/local/bin/drupal && \
    chmod +x /usr/local/bin/drupal && \
    gosu www-data drupal init

# Point drush to drupal
COPY drush.sh /docker-entrypoint-init.d/
