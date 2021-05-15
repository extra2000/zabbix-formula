# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import ZABBIX with context %}

/opt/nginx/conf.d/{{ ZABBIX.projectname }}-web.conf:
  file.managed:
    - source: salt://zabbix/files/nginx/web.conf
    - template: jinja
    - context:
      port: {{ ZABBIX.web.port }}
