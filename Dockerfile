# Simple PHP + Apache image
FROM php:8.2-apache

# Install common PHP extensions (add more later if needed)
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Copy your into Apache document root
COPY src/ /var/www/html/

# Apache listens on 80 by default
EXPOSE 80
