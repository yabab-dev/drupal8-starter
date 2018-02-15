FROM webdevops/php-apache-dev

EXPOSE 80
ENV WEB_DOCUMENT_ROOT /app/web

# NodeJS
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
  && apt-get install -y nodejs

# Required for drush
RUN apt-get install -y mysql-client

# Copy drupal files
COPY app /app
COPY create.sh /create.sh

WORKDIR /app

# Composer vendor added to PATH
RUN echo 'export PATH="$PATH:/app/vendor/bin"' >> /home/application/.bashrc