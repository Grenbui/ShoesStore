# Created Docker with php and Apache
FROM php:8.1-apache

RUN docker-php-ext-install pdo pdo_mysql mysqli

COPY ./app /var/www/html

RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html
