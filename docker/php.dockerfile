FROM php:7.4-fpm-alpine
RUN apk add nano
RUN apk add vim
RUN apk add git
RUN apk add git
RUN apk add curl
RUN apk add curl-dev
RUN apk add bash
RUN apk add bash-completion
RUN apk add oniguruma-dev
RUN apk add libzip-dev
RUN apk add freetype-dev
RUN apk add libxml2-dev
RUN apk add libintl
RUN apk add libjpeg-turbo-dev
RUN apk add libpng-dev
RUN apk add mysql-client
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-configure bcmath
RUN docker-php-ext-install soap
RUN docker-php-ext-install zip
RUN docker-php-ext-install curl
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install exif
RUN docker-php-ext-install gd
RUN docker-php-ext-install iconv
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install opcache
RUN docker-php-ext-install pdo_mysql
#RUN set -ex
#RUN apk add nodejs npm
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && chmod +x /usr/bin/composer

#RUN apk add --update $PHPIZE_DEPS freetype-dev git libjpeg-turbo-dev libpng-dev libxml2-dev \
#		libzip-dev openssh-client php7-json php7-openssl php7-pdo php7-pdo_mysql php7-session php7-simplexml php7-tokenizer \
#		php7-xml imagemagick imagemagick-libs imagemagick-dev php7-imagick php7-pcntl php7-zip sqlite
#
#RUN docker-php-ext-install iconv soap sockets exif bcmath pdo_mysql pcntl
#RUN docker-php-ext-configure gd --with-jpeg --with-freetype
#RUN docker-php-ext-install gd
#RUN docker-php-ext-install zip
#
#RUN printf "\n" | pecl install \
#		imagick && \
#		docker-php-ext-enable --ini-name 20-imagick.ini imagick
#
#RUN printf "\n" | pecl install \
#		pcov && \
#		docker-php-ext-enable pcov

#RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
#	&& php composer-setup.php \
#	&& php -r "unlink('composer-setup.php');" \
#	&& mv composer.phar /usr/bin/composer


#RUN #sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)" -- \
##    -t https://github.com/denysdovhan/spaceship-prompt \
##    -a 'SPACESHIP_PROMPT_ADD_NEWLINE="false"' \
##    -a 'SPACESHIP_PROMPT_SEPARATE_LINE="false"' \
##    -p git \
##    -p ssh-agent \
##    -p https://github.com/zsh-users/zsh-autosuggestions \
##    -p https://github.com/zsh-users/zsh-completions
