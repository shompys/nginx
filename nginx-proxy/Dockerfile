FROM ubuntu:jammy-20240227
RUN apt update && apt upgrade -y && apt install nginx -y && apt clean

COPY /etc/nginx/nginx.conf /etc/nginx/nginx.conf

COPY /etc/nginx/sites-available /etc/nginx/sites-available

# COPY /var/www/html/index.html /var/www/html/index.html
# COPY /var/www /var/www
# origin .
# RUN ln -s /etc/nginx/sites-available/pokemon /etc/nginx/sites-enabled/pokemon

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
