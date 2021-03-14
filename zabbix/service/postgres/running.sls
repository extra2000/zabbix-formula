# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import ZABBIX with context %}

postgres-image-present:
  cmd.run:
    - name: podman pull {{ ZABBIX.database.postgres.image.name }}
    - retry:
        attempts: 10
        interval: 5
        until: true
    - runas: {{ ZABBIX.hostuser.name }}

postgres-pod-destroy-if-exists:
  module.run:
    - state.sls:
      - mods:
        - zabbix.service.postgres.destroy

postgres-pod-running:
  cmd.run:
    - name: podman play kube --network=zabbixnet postgres-pod.yaml
    - cwd: /opt/zabbix
    - runas: {{ ZABBIX.hostuser.name }}
    - require:
      - cmd: postgres-image-present
      - module: postgres-pod-destroy-if-exists
