FROM ubuntu:jammy-20240227
RUN apt update && apt upgrade -y && apt install nginx -y &&  apt clean
COPY /etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY /var/www/html/index.html /var/www/html/index.html
EXPOSE 80 8080 443

CMD ["nginx", "-g", "daemon off;"]
