#!/bin/bash
set -e

versions=( "$@" )
if [ ${#versions[@]} -eq 0 ]; then
    versions=( */ )
fi
versions=( "${versions[@]%/}" )

for version in "${versions[@]}"; do
    echo "Updating $version"
    (
      set -x
      rm -rf $version/*
      cp README.md drush.sh $version/
      sed 's/{{ version }}/'$version'/g' Dockerfile > $version/Dockerfile
    )
done

echo "Fix PHP 5.3"
(
  set -x
  sed -i '' -e 's/drush:~8.0/drush:7.*/' 5.3/Dockerfile
  sed -i '' -e '/drupal console/,/drush to drupal/d' 5.3/Dockerfile
)
