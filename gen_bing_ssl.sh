#!/bin/bash

cert_path="/etc/bing/cert.crt"
key_path="/etc/bing/private.key"
openssl ecparam -genkey -name prime256v1 -out $key_path
openssl req -new -x509 -days 36500 -key $key_path -out $cert_path -subj "/CN=www.bing.com"
chmod 777 $cert_path
chmod 777 $key_path