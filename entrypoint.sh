#!/bin/sh
set -e
if [ -n "$API_URL" ]; then
  sed -i "s|__API_URL__|$API_URL|g" /usr/share/nginx/html/index.html
fi
exec nginx -g 'daemon off;'
