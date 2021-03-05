# Changelog

## [1.2.0](https://github.com/extra2000/zabbix-formula/compare/v1.1.0...v1.2.0) (2021-03-05)


### Features

* **zabbix.service:** Implement state `zabbix.service.dead` to destroy Zabbix server and Postgres pods ([8d1226e](https://github.com/extra2000/zabbix-formula/commit/8d1226eb17d4f0b4f71a219e29e1c6e29e747c6e))


### Performance Improvements

* **defaults.yaml, pillar.example:** Optimize container resources ([8d941a8](https://github.com/extra2000/zabbix-formula/commit/8d941a8babd5fd7e3f31f03ab829cd3d7e2c5d80))


### Fixes

* **postgres, zabbix-server:** Set pod to always restart `OnFailure` ([b4659db](https://github.com/extra2000/zabbix-formula/commit/b4659db9811907ae34202e5b7239f8b4af13fcf5))


### Code Refactoring

* **zabbix.agent:** Remove Zabbix agent ([c9a7135](https://github.com/extra2000/zabbix-formula/commit/c9a71356edf4b40e641289073a05eefd3a8f3596))


### Documentations

* **README:** Add state `zabbix.service.dead` ([fa2adee](https://github.com/extra2000/zabbix-formula/commit/fa2adeead7bb88895ef96c8a70315d09548ef57a))
* **README:** Remove `zabbix.agent` state ([a96e105](https://github.com/extra2000/zabbix-formula/commit/a96e1053fbd33063f6c457da8ad297eee5995a34))

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
