FROM nginx

COPY ./index.html /usr/share/nginx/html/

COPY ./vhost.nginx.conf /etc/nginx/conf.d/blog.conf

EXPOSE 80
