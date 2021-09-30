FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY composer*.json ./
RUN composer dump-autoload -o
RUN composer install --no-scripts

COPY . .

