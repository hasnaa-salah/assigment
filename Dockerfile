FROM nginx:alpine
COPY ./nginx.conf /etc/nginx/nginx.conf
UN adduser -u 1000 hassna --disabled-password
