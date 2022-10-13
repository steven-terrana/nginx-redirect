FROM nginx

COPY nginx.conf.template nginx.conf.template
COPY index.html /usr/share/nginx/html/index.html
COPY entrypoint.sh entrypoint.sh

EXPOSE 80

ENTRYPOINT [ "/bin/bash", "entrypoint.sh" ]