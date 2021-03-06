# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import ZABBIX with context %}

{% if ZABBIX.hostuser.name == 'root' %}
  {% set cni_path = '/etc/cni/net.d/' %}
{% else %}
  {% set cni_path = '/home/' + ZABBIX.hostuser.name + '/.config/cni/net.d' %}
{% endif %}

/opt/zabbix:
  file.directory:
    - user: {{ ZABBIX.hostuser.name }}
    - group: {{ ZABBIX.hostuser.group }}

{{ cni_path }}:
  file.directory:
    - user: {{ ZABBIX.hostuser.name }}
    - group: {{ ZABBIX.hostuser.group }}
    - makedirs: true

{{ cni_path }}/podman-network-zabbixnet.conflist:
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
    - context:
      server: {{ ZABBIX.server }}

/opt/zabbix/zabbix-server-pod.yaml:
  file.managed:
    - source: salt://zabbix/files/zabbix-server-pod.yaml
    - user: {{ ZABBIX.hostuser.name }}
    - group: {{ ZABBIX.hostuser.group }}
    - template: jinja
    - context:
      projectname: {{ ZABBIX.projectname }}
      server: {{ ZABBIX.server }}
      web: {{ ZABBIX.web }}

/opt/zabbix/postgres-pod.yaml:
  file.managed:
    - source: salt://zabbix/files/postgres-pod.yaml
    - user: {{ ZABBIX.hostuser.name }}
    - group: {{ ZABBIX.hostuser.group }}
    - template: jinja
    - context:
      projectname: {{ ZABBIX.projectname }}
      postgres: {{ ZABBIX.database.postgres }}
