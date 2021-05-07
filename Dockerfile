FROM yiisoftware/yii2-php:7.1-apache
RUN apt-get update && \
    apt-get -y install libldap2-dev && \
    docker-php-ext-install ldap
RUN sed -i -e 's|/app/web|/app/|g' /etc/apache2/sites-available/000-default.conf
