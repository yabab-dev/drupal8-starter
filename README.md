# Drupal 8 & Docker starter

## Start docker containers

```sh
docker-compose up -d
```

## Exec in container

```sh
docker-compose exec -u application app bash
```

## Install Drupal database & modules

```sh
# On container
composer install -o

drush si -y --config-dir="../config/sync" \
--db-prefix="" \
--db-url="mysql://root:root@mysql:3306/drupal" \
--site-name="Drupal 8"  \
--site-mail="example@domain.com"  \
--account-name="admin"  \
--account-mail="example@domain.com"  \
--account-pass="admin"
```

## Visit your site

[http://localhost:8000](http://localhost:8000)
