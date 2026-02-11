FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY public /usr/share/nginx/html
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]
