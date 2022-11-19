FROM ubuntu:latest

LABEL Maintener="Ilham Kurniawan" \
    email="ilham@mail.dev" \
    version="1.0"

RUN mkdir -p /var/www/html && \
    apt update && \
    apt install -y apache2

WORKDIR /var/www/html

COPY index.html /var/www/html/

CMD [ "apachectl" , "-D", "FOREGROUND" ]

EXPOSE 80
