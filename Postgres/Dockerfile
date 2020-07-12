FROM postgres:latest
ADD . /newchatApp
WORKDIR /newchatApp
COPY createdb.sql /docker-entrypoint-initdb.d
