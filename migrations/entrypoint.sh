#!/bin/bash

cat > ./liquibase.properties <<EOF
  url=jdbc:postgresql://db:5432/${DB_DATABASE}
  username=${DB_USER}
  password=${DB_PASSWORD}
  changeLogFile=changelog.xml
  searchPath=./migrations
EOF

liquibase update --defaultsFile=./liquibase.properties --changelogFile=./changelog.xml