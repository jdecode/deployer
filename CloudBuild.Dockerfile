# For GCP / Cloud Build
FROM php:8.1-apache

ARG PORT
ENV PORT=${PORT}

COPY . /var/www/html

RUN sed -i 's/80/${PORT}/g' /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf

