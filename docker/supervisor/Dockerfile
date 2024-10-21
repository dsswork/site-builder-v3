FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    curl \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    libonig-dev \
    libxml2-dev \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    libpq-dev \
    zlib1g-dev \
    libzip-dev \
    libwebp-dev \
    sudo

RUN docker-php-ext-install pdo pdo_mysql

#RUN docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/  \
#    --with-webp=/usr/include/ && docker-php-ext-install gd

RUN docker-php-ext-configure gd --with-freetype --with-webp --with-jpeg && \
    docker-php-ext-install gd

RUN apt-get update && apt-get install -y supervisor

RUN mkdir -p "/etc/supervisor/logs"

COPY . /var/www

COPY supervisord.conf /etc/supervisor/supervisord.conf

CMD ["/usr/bin/supervisord", "-n", "-c",  "/etc/supervisor/supervisord.conf"]

