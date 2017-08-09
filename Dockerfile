FROM ubuntu
RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get -y install git nginx nginx-extras php5-dev php5-fpm
RUN mkdir -p /var/www

WORKDIR /var/www

RUN echo "<?php phpinfo(); ?>" > /var/www/index.php

EXPOSE 80

CMD service php5-fpm start && nginx
