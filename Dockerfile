FROM debian

WORKDIR /var/www/html
COPY . ./

RUN apt update && apt -y install apache2

EXPOSE 80

CMD apachectl -D FOREGROUND
