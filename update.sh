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
      cp sql-connect README.md $version
      sed 's/{{ version }}/'$version'/g' Dockerfile > $version/Dockerfile
    )
done

echo "Fix PHP 5.3"
(
  set -x;
  sed -i '' -e 's/drush:dev-master/drush:7.*/' 5.3/Dockerfile
)
