FROM nginx:alpine

# Copiamos el archivo de texto plano
COPY index.txt /usr/share/nginx/html/index.txt

# Reemplazamos la config para que sirva text/plain como archivo principal
RUN printf "server {\n\
    listen 80;\n\
    root /usr/share/nginx/html;\n\
    index index.txt;\n\
    default_type text/plain;\n\
    charset utf-8;\n\
}\n" > /etc/nginx/conf.d/default.conf
