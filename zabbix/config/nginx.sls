# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import ZABBIX with context %}

/etc/nginx/conf.d/https.conf:
  file.managed:
    - source: salt://zabbix/files/nginx-https.conf.jinja
    - template: jinja

zabbix-nginx-service-stop:
  service.dead:
    - name: nginx.service

zabbix-nginx-service-running:
  service.running:
    - name: nginx.service
