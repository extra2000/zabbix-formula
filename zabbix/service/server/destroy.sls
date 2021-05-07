# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import ZABBIX with context %}

zabbix-server-pod-destroy:
  cmd.run:
    - name: podman pod rm --force {{ ZABBIX.projectname }}-zabbix-server-pod
    - runas: {{ ZABBIX.hostuser.name }}
