#!/bin/bash


docker run -it -d --name datascience \
    -v /var/www/datascience:/var/www/datascience \
    -v /tmp:/tmp dts \
    uwsgi -s /tmp/datascience.sock --uid www-data --gid www-data --mount /datascience=run:app \
    --chmod-socket=666