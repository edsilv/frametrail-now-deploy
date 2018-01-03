FROM php:apache

RUN apt-get update &&\
apt-get install -y git &&\
mkdir /temp && cd /temp && git clone https://github.com/OpenHypervideo/FrameTrail &&\
cd /temp/FrameTrail &&\
git checkout 6259668f978bc720324748d6c07addec4b6b8ce8 &&\
rm -rf /var/www/html && mv /temp/FrameTrail/ /var/www/html && mkdir _data &&\
chmod -R 755 /var/www/html
#chmod -R 755 /var/www/

EXPOSE 80

CMD apachectl -D FOREGROUND