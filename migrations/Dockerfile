FROM openjdk:8-jre-alpine

RUN apk add --no-cache bash

RUN wget https://github.com/liquibase/liquibase/releases/download/v4.26.0/liquibase-4.26.0.tar.gz \
    && mkdir /opt/liquibase \
    && tar -xvzf liquibase-4.26.0.tar.gz -C /opt/liquibase \
    && rm liquibase-4.26.0.tar.gz

ENV PATH=$PATH:/opt/liquibase

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
