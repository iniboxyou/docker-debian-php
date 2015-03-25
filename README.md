## Docker run

    export DATA_PREFIX="/path/to/volume"

    docker run \
      --name apache-php \
      -p 10080:80 \
      -v $DATA_PREFIX/var/www/:/var/www \
      -v $DATA_PREFIX/etc/apache2/sites-available/:/etc/apache2/sites-available \
      -v $DATA_PREFIX/etc/apache2/sites-enabled/:/etc/apache2/sites-enabled \
      splattael/debian-php
