#!/bin/sh

# Remplace ${PORT} dans la configuration Nginx
envsubst '${PORT}' < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf.tmp
mv /etc/nginx/conf.d/default.conf.tmp /etc/nginx/conf.d/default.conf

# Démarre Nginx
nginx -g "daemon off;"
