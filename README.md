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

drupal si --no-interaction standard \
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

# /!\ Set uuid: null to your default language file 'language.entity.<langcode>'

drupal entity:delete shortcut_set default
drupal config:import --directory "../config/sync" --skip-uuid

drupal cache:rebuild
```

## Aditionnal features to install

```sh
drupal ckeditor_media_embed:install
```

## Visit your site

[http://localhost:8000](http://localhost:8000)

## Image docs

https://dockerfile.readthedocs.io/en/latest/content/DockerImages/dockerfiles/php-apache-dev.html
