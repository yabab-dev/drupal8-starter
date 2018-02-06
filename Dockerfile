FROM webdevops/php-apache-dev

EXPOSE 80
ENV WEB_DOCUMENT_ROOT /app/web

# Required for drush install
RUN apt-install mysql-client

# Copy drupal files
COPY app /app
WORKDIR /app

# Composer vendor added to PATH
RUN echo 'export PATH="$PATH:/app/vendor/bin"' >> /home/application/.bashrc