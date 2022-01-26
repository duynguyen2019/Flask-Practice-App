FROM debian:latest

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update 
RUN apt-get install -y apt-utils
RUN apt-get install -y python3-pip python3-dev build-essential libssl-dev libffi-dev
RUN apt-get install -y libpcre3 libpcre3-dev
RUN apt-get install -y vim
RUN apt-get install apt-transport-https ca-certificates curl software-properties-common gnupg2 -y
RUN apt-get install -y libpq-dev && pip3 install psycopg2
RUN apt-get install -y libgdal-dev
RUN apt-get install -y libproj-dev
RUN apt-get install ca-certificates curl gnupg lsb-release
RUN apt-get install -y python3-pyproj
RUN pip3 install wheel
RUN pip3 install uwsgi flask
RUN pip3 install ipython


RUN mkdir -p /var/www/datascience
WORKDIR /var/www/datascience