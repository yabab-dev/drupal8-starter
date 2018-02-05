FROM webdevops/php-apache:7.1

EXPOSE 80
ENV WEB_DOCUMENT_ROOT /app/web

# Copy drupal files
COPY app /app
WORKDIR /app

# Drush & Drupal console added to PATH
RUN echo 'export PATH="$PATH:/app/vendor/bin"' >> /home/application/.bashrc