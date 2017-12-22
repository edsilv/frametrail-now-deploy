#FROM kstaken/apache2
#FROM 1and1internet/ubuntu-16-apache-php-5.6
FROM tutum/apache-php:latest

#RUN apt-get update
#RUN apt-get install -y python-software-properties
#RUN add-apt-repository ppa:ondrej/php5-5.6
RUN apt-get update
RUN apt-get install -y git
RUN cd /var/www/html && git clone https://github.com/OpenHypervideo/FrameTrail
#RUN apt-get install -y php5 && \
#libapache2-mod-php5 php5-mysql php5-cli && \
#apt-get clean && rm -rf /var/lib/apt/lists/*

# ENV APACHE_RUN_USER www-data
# ENV APACHE_RUN_GROUP www-data
# ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

CMD apachectl -D FOREGROUND

#CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]