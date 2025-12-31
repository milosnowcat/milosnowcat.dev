FROM nginx:alpine

COPY ./public /usr/share/nginx/html/

RUN printf "server {\n\
    listen 80;\n\
    root /usr/share/nginx/html;\n\
    index index.txt;\n\
    default_type text/plain;\n\
    charset utf-8;\n\
}\n" > /etc/nginx/conf.d/default.conf
