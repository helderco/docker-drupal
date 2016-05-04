#!/bin/bash

: ${DRUPAL_HOME:=/usr/src/app/web}

if [ -d "$DRUPAL_HOME" ]; then
    mkdir -p /etc/drush
    echo "<?php \$options[\"r\"] = \"$DRUPAL_HOME\";" > /etc/drush/drushrc.php
fi
