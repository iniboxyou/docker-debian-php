# Apache2 + PHP5 on Debian Jessie

[![docker hub](https://img.shields.io/badge/docker-image-blue.svg?style=flat-square)](https://registry.hub.docker.com/u/splattael/debian-php/)

## Docker run

    export DATA_PREFIX="/path/to/volume"

    docker run \
      --name apache-php \
      -p 10080:80 \
      -v $DATA_PREFIX/var/www/:/var/www \
      -v $DATA_PREFIX/etc/apache2/sites-available/:/etc/apache2/sites-available \
      -v $DATA_PREFIX/etc/apache2/sites-enabled/:/etc/apache2/sites-enabled \
      splattael/debian-php

## Building / testing

Following TARGETs are available:

* `wheezy` (default)
* `jessie`

### Build a docker image

    make build # TARGET defaults to jessie
    make build TARGET=wheezy

### Build and run docker image

    make test 
    make test TARGET=wheezy

### Build and spawn a shell

    make shell
    make shell TARGET=wheezy
