FROM php:latest-alpine
COPY app1/composer.lock app1/composer.json /var/www/html/

WORKDIR /var/www/html

# Install Additional dependencies

# Add and Enable PHP-PDO Extenstions
RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-enable pdo_mysql

# Install PHP Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

