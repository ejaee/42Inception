#!/bin/sh

GREEN='\033[1;32m'
RESET='\033[0m'

openssl req -newkey rsa:4096 -days 30 -nodes -x509 \
    -subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=Lee/CN=ejachoi.42.fr" \
    -keyout "/etc/ssl/ejachoi.42.fr.key" \
    -out "/etc/ssl/ejachoi.42.fr.crt" 2>/dev/null

cat <<EOM
${GREEN}--------------------
Nginx configuration has been completed.
Port: 443
--------------------${RESET}
EOM

exec nginx -g 'daemon off;'