#!/bin/bash

openssl ecparam -genkey -name prime256v1 -out /etc/bing/private.key
openssl req -new -x509 -days 36500 -key /etc/bing/private.key -out /etc/hysteria/cert.crt -subj "/CN=www.bing.com"
chmod 777 $cert_path
chmod 777 $key_path