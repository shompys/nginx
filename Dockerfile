FROM ubuntu:jammy-20240227
RUN apt update && apt upgrade -y && apt install nginx -y && apt clean

COPY /etc/nginx/nginx.conf /etc/nginx/nginx.conf

COPY /etc/nginx/sites-available /etc/nginx/sites-available
COPY /etc/nginx/sites-enabled /etc/nginx/sites-enabled

COPY /var/www/html/index.html /var/www/html/index.html

RUN ln -s /etc/nginx/sites-available/soy-sitio /etc/nginx/sites-enabled/acceso-directo

EXPOSE 80 8080 443

CMD ["nginx", "-g", "daemon off;"]
