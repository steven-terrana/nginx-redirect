#!/bin/sh

echo "setting up redirect to ${REDIRECT_URL}"
envsubst < nginx.conf.template > /etc/nginx/nginx.conf

nginx -g 'daemon off;' 