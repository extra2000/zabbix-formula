# zabbix-formula

| License | Versioning | Build |
| ------- | ---------- | ----- |
| [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) | [![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release) | [![Build status](https://ci.appveyor.com/api/projects/status/gu1xg9qla2dgwk0f/branch/master?svg=true)](https://ci.appveyor.com/project/nikAizuddin/zabbix-formula/branch/master) |

SaltStack Formula for [Zabbix](https://github.com/zabbix/zabbix).


## Available states

| States | Descriptions |
| ------ | ------------ |
| `zabbix` | Apply `zabbix.config` and `zabbix.service` states. |
| `zabbix.config` | Apply configs and put configuration files. |
| `zabbix.config.nginx` | Configure NGINX for HTTPS. |
| `zabbix.service` | Apply `zabbix.service.postgres` and `zabbix.service.server` states. |
| `zabbix.service.postgres` | Deploy Postgres pod. |
| `zabbix.service.server` | Deploy Zabbix Server pod. |
| `zabbix.service.dead` | Destroy Zabbix Server and Postgres pods. |
