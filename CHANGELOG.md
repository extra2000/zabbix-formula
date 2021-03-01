# Changelog

## [1.1.0](https://github.com/extra2000/zabbix-formula/compare/v1.0.0...v1.1.0) (2021-03-01)


### Features

* **https:** Add NGINX config file for HTTPS ([f49190c](https://github.com/extra2000/zabbix-formula/commit/f49190c2f1ef1ad1687cb9c055b4296905ffb6f0))
* **zabbix.agent:** Add state `zabbix.agent` to install and deploy Zabbix agent without container ([504f419](https://github.com/extra2000/zabbix-formula/commit/504f4196ad7606ce2259c90bd7db8e99c2156930))


### Fixes

* **zabbix/files/postgres-pod.yaml:** Remove Podman 2.x workarounds ([2e06d1e](https://github.com/extra2000/zabbix-formula/commit/2e06d1ee3a896717f817a659d4e15a1978225b53))
* **zabbix/files/zabbix-server-pod.yaml:** Remove Podman 2.x workarounds ([ac69f3f](https://github.com/extra2000/zabbix-formula/commit/ac69f3f93a90610363b64e0da4274a14d02c59e5))


### Documentations

* **README:** Add `zabbix.agent` state into Section `Available States` ([5ea046e](https://github.com/extra2000/zabbix-formula/commit/5ea046ed89e1c92b9dbaa85aff74aeea7c269694))
* **README:** Add `zabbix.config.nginx` state into Section `Available states` ([09b279b](https://github.com/extra2000/zabbix-formula/commit/09b279b1011bd780f1ca02abd956dfbce1ad1285))

## 1.0.0 (2021-02-18)


### Features

* Add implementations for `zabbix/` ([b432ed7](https://github.com/extra2000/zabbix-formula/commit/b432ed7b4a1de66846257dc8450e5b964a9a7018))


### Continuous Integrations

* Add AppVeyor with `semantic-release` bot ([5850f88](https://github.com/extra2000/zabbix-formula/commit/5850f88bbf05cddd94b1a6d2a9eac1ecda3dc3f5))


### Documentations

* **pillar:** Add `pillar.example` ([744988f](https://github.com/extra2000/zabbix-formula/commit/744988f9c7bc4522d0123b1fef9f4a518c7bd131))
* **README:** Update `README.md` ([8407d5c](https://github.com/extra2000/zabbix-formula/commit/8407d5c070feef0cda659a2915018192a32f7009))
