FROM nginx:latest
LABEL MAINTAINER Mauricio Silvestre
COPY nginx.conf /etc/nginx/nginx.conf
COPY /pwa /var/www/public
EXPOSE 80 3000
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
