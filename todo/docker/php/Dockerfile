FROM php:8.0-fpm
COPY php.ini /usr/local/etc/php/

# Disable mbstring.internal_encoding because this property is deprecated.
RUN sed -i 's/mbstring.internal_encoding = "UTF-8"/;mbstring.internal_encoding = "UTF-8"/g' /usr/local/etc/php/php.ini

RUN apt-get update \
  && apt-get install -y zlib1g-dev mariadb-client vim libzip-dev \
  && docker-php-ext-install zip pdo_mysql

# xdebug install
RUN apt update \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

# Composer install
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER 1

ENV COMPOSER_HOME /composer

ENV PATH $PATH:/composer/vendor/bin


WORKDIR /var/www

RUN composer global require "laravel/installer"
