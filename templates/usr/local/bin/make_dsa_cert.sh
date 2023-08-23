#!/bin/bash

# {{ ansible_managed }}

/usr/bin/openssl req -new \
  -newkey dsa:<(/usr/bin/openssl dsaparam 4096) \
  -days 1000 \
  -nodes \
  -x509 \
  -subj "/O={{ scrollout_ssl_organization }}/CN={{ scrollout_ssl_hostname }}.{{ scrollout_ssl_domain }}" \
  -keyout /etc/postfix/certs/scrollout-dsa.key  \
  -out /etc/postfix/certs/scrollout-dsa.cert
