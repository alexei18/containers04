# Create from debian image
FROM debian:latest

# Mount volume for mysql data
VOLUME /var/lib/mysql

# Mount volume for logs
VOLUME /var/log

# Open port 80
EXPOSE 80

# Install apache2, php, mod_php for apache2, php-mysql and mariadb-server
RUN apt update && apt install -y apache2 php libapache2-mod-php php-mysql mariadb-server supervisor

# Clean up
RUN apt clean

# Add wordpress files to /var/www/html
ADD https://wordpress.org/latest.tar.gz /var/www/html/

# Copy the configuration file for apache2
COPY files/apache2/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY files/apache2/apache2.conf /etc/apache2/apache2.conf

# Copy the configuration file for php
COPY files/php/php.ini /etc/php/8.2/apache2/php.ini

# Copy the configuration file for mysql
COPY files/mariadb/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# Copy the supervisor configuration file
COPY files/supervisor/supervisord.conf /etc/supervisor/supervisord.conf

# copy the configuration file for wordpress from files/ directory
COPY files/wp-config.php /var/www/html/wordpress/wp-config.php


# Create mysql socket directory and set permissions
RUN mkdir /var/run/mysqld && chown mysql:mysql /var/run/mysqld

# Start supervisor
CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]
