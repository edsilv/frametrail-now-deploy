FROM php:apache

RUN apt-get update
RUN apt-get install -y git
RUN cd /var/www/html && git clone https://github.com/OpenHypervideo/FrameTrail
#RUN cd FrameTrail && mkdir _data
RUN chmod -R 755 /var/www/

EXPOSE 80

CMD apachectl -D FOREGROUND