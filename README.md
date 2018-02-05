# Drupal 8 & Docker starter

## Install drupal on your host

```sh
composer create-project drupal-composer/drupal-project:8.x-dev app --stability dev --no-interaction
```

## Start docker containers

```sh
docker-compose up -d
```

## Exec in container

```sh
docker-compose exec -u application app bash
```

## Install Drupal database

```sh
# On container
drupal si standard \
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
