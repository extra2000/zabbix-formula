# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import ZABBIX with context %}

/opt/zabbix:
  file.directory:
    - user: {{ ZABBIX.hostuser.name }}
    - group: {{ ZABBIX.hostuser.group }}

/home/{{ ZABBIX.hostuser.name }}/.config/cni/net.d:
  file.directory:
    - user: {{ ZABBIX.hostuser.name }}
    - group: {{ ZABBIX.hostuser.group }}
    - makedirs: true

/home/{{ ZABBIX.hostuser.name }}/.config/cni/net.d/podman-network-zabbixnet.conflist:
  file.managed:
    - source: salt://zabbix/files/podman-network-zabbixnet.conflist.jinja
    - user: {{ ZABBIX.hostuser.name }}
    - group: {{ ZABBIX.hostuser.group }}
    - template: jinja
    - context:
      pod: {{ ZABBIX.pod }}

/opt/zabbix/zabbix_server.conf:
  file.managed:
    - source: salt://zabbix/files/zabbix_server.conf.jinja
    - user: {{ ZABBIX.hostuser.name }}
    - group: {{ ZABBIX.hostuser.group }}
    - template: jinja

/opt/zabbix/zabbix-server-pod.yaml:
  file.managed:
    - source: salt://zabbix/files/zabbix-server-pod.yaml
    - user: {{ ZABBIX.hostuser.name }}
    - group: {{ ZABBIX.hostuser.group }}
    - template: jinja
    - context:
      server: {{ ZABBIX.server }}
      web: {{ ZABBIX.web }}
      agent: {{ ZABBIX.agent }}

/opt/zabbix/postgres-pod.yaml:
  file.managed:
    - source: salt://zabbix/files/postgres-pod.yaml
    - user: {{ ZABBIX.hostuser.name }}
    - group: {{ ZABBIX.hostuser.group }}
    - template: jinja
    - context:
      postgres: {{ ZABBIX.database.postgres }}
