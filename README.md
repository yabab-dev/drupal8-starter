# Drupal 8 & Docker starter

## User specific configurations

```sh
cp docker-compose.override.yml.default docker-compose.override.yml
# And change variables if needed ;)
```

## Start docker containers

```sh
docker-compose up -d
```

## Exec in container

```sh
docker-compose exec -u application app bash
```

## Install Drupal & database

```sh
# On container
/create.sh

composer create-project drupal-composer/drupal-project:8.x-dev app --stability dev --no-interaction

drupal si standard -y \
--langcode="fr"  \
--db-type="mysql"  \
--db-host="mysql"  \
--db-name="drupal"  \
--db-user="root"  \
--db-pass="root"  \
--db-port="3306"  \
--db-prefix="" \
--site-name="Drupal 8"  \
--site-mail="example@domain.com"  \
--account-name="admin"  \
--account-mail="example@domain.com"  \
--account-pass="admin"
```

## Visit your site

[http://localhost:8000](http://localhost:8000)

## Image docs

https://dockerfile.readthedocs.io/en/latest/content/DockerImages/dockerfiles/php-apache-dev.html
