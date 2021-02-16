# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import ZABBIX with context %}

zabbix-server-containers-running:
  cmd.run:
    - name: podman play kube --network=zabbixnet zabbix-server-pod.yaml
    - cwd: /opt/zabbix
    - runas: {{ ZABBIX.hostuser.name }}
