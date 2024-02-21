#!/bin/bash

if [ ! -d "/etc/bing" ]; then
  mkdir /etc/bing
fi

openssl ecparam -genkey -name prime256v1 -out /etc/bing/private.key
openssl req -new -x509 -days 36500 -key /etc/bing/private.key -out /etc/bing/cert.crt -subj "/CN=www.bing.com"
chmod 777 /etc/bing/private.key
chmod 777 /etc/bing/cert.crt