#!/usr/bin/env sh
unlink /app/.gitkeep
composer create-project drupal-composer/drupal-project:8.x-dev /app --stability dev --no-interaction