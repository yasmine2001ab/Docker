FROM php:7.3-apache
Run apt update && apt-get upgrade -y
RUN docker-php-ext-install mysqli  && docker-php-ext-enable mysqli 
EXPOSE 80
