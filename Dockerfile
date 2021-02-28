FROM alpine:latest

MAINTAINER imnavas <imnavas@yahoo.es>

RUN apk --update add nginx && \
    mkdir -p /run/nginx

COPY 2048 /var/lib/nginx/html
COPY nginx.conf /etc/nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
