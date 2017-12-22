FROM kstaken/apache2

EXPOSE 80

RUN apt-get update && apt-get install -y git && apt-get install -y php5 libapache2-mod-php5 php5-mysql php5-cli && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN cd /var/www/ && git clone https://github.com/OpenHypervideo/FrameTrail

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]