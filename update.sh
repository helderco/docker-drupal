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
      cp README.md $version
      sed 's/{{ version }}/'$version'/g' Dockerfile > $version/Dockerfile
    )
done
