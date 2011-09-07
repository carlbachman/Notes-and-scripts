#!/bin/sh
NAME=$1
openssl genrsa -out ${NAME}.key 2040
chmod 400 ${NAME}.key
openssl req -new -x509 -nodes -days 1825 -key ${NAME}.key -out ${NAME}.pem
