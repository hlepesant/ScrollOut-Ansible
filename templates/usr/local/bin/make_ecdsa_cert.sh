#!/bin/bash

# {{ ansible_managed }}

/usr/bin/openssl req -new \
  -sha384 \
  -newkey ec:<(/usr/bin/openssl ecparam -name secp384r1) \
  -days 1000 \
  -nodes \
  -x509 \
  -subj "/O={{ scrollout_ssl_organization }}/CN={{ scrollout_ssl_hostname }}.{{ scrollout_ssl_domain }}" \
  -keyout /etc/postfix/certs/scrollout-ecdsa.key  \
  -out /etc/postfix/certs/scrollout-ecdsa.cert
