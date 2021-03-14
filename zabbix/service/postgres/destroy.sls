# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import ZABBIX with context %}

postgres-container-destroy:
  cmd.run:
    - name: podman pod rm --force postgres-pod
    - runas: {{ ZABBIX.hostuser.name }}
