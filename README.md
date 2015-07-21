# Drupal

Based on [helder/php](https://registry.hub.docker.com/u/helder/php/), adds tooling for [Drupal](https://www.drupal.org).

* drush (via composer);
* mysql-client (because drush uses it to connect to the database);
* pcntl PHP extension (for the `drush php` interactive php command);

## Importing database

Drush has a command to connect to the database:

    docker-compose run --rm php bash -c '$(drush sql-connect)' < database.sql
