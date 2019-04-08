FROM nginx:alpine
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf

RUN touch /var/run/nginx.pid
RUN chown -R $userid:root /var/run/nginx.pid
RUN chown -R $userid:root /var/cache/nginx

RUN mkdir -p /var/www/hassna
RUN touch /var/www/hassna/index.html
echo "hasnaa website " > /var/www/hassna/index.html
USER $userid 
