# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import ZABBIX with context %}

zabbix-server-image-present:
  cmd.run:
    - name: podman pull {{ ZABBIX.server.image.name }}
    - retry:
        attempts: 10
        interval: 5
        until: true
    - runas: {{ ZABBIX.hostuser.name }}

zabbix-web-image-present:
  cmd.run:
    - name: podman pull {{ ZABBIX.web.image.name }}
    - retry:
        attempts: 10
        interval: 5
        until: true
    - runas: {{ ZABBIX.hostuser.name }}

zabbix-server-pod-destroy-if-exists:
  module.run:
    - state.sls:
      - mods:
        - zabbix.service.server.destroy

zabbix-server-pod-running:
  cmd.run:
    - name: podman play kube zabbix-server-pod.yaml
    - cwd: /opt/zabbix
    - runas: {{ ZABBIX.hostuser.name }}
    - require:
      - cmd: zabbix-server-image-present
      - cmd: zabbix-web-image-present
      - module: zabbix-server-pod-destroy-if-exists
