# LiquibasePostgreSQL

Этот репозиторий содержит проект для управления схемой базы данных PostgreSQL с использованием Liquibase. Liquibase - это инструмент для отслеживания, управления и применения изменений в базе данных.


## Установка и запуск
   ```sh
   git clone git@github.com:vektorver/LiquibasePostgreSQL.git
   cd LiquibasePostgreSQL
   bash server_start.sh
   ```

## Описание

База данных описана в db/init.sql

Миграция, которую необходимо применить описана в migrations/changelogs/changelog-1.xml

Миграция будет автоматически применена с запуском сервиса