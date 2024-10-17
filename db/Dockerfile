FROM postgres:latest
RUN rm -rf /var/lib/postgresql/data/*
COPY init.sql /docker-entrypoint-initdb.d/