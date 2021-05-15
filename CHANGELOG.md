# Changelog

## [4.0.0](https://github.com/extra2000/zabbix-formula/compare/v3.1.0...v4.0.0) (2021-05-15)


### ⚠ BREAKING CHANGES

* **nginx:** NGINX conf has breaking changes.
* **salt:** naming scheme for pods and volumes have changed.

### Features

* **nginx:** simplify NGINX conf deployments outside of Vagrant box ([22ea373](https://github.com/extra2000/zabbix-formula/commit/22ea3737a2a4d2ce84e79e43971465fe83c904b8))
* **postgres:** upgrade from `v13.2` to `v13.3` ([5cc37a4](https://github.com/extra2000/zabbix-formula/commit/5cc37a44de76f4c8d990d467a54838a9289e9bbc))
* **zabbix:** upgrade from `v5.2.5` to `v5.2.6` ([19aa497](https://github.com/extra2000/zabbix-formula/commit/19aa4976b62768c53c1fe2c7a19798d83aa4f8af))


### Code Refactoring

* **salt:** prefix pods and volumes with `projectname` value to prevent naming conflict with other projects ([cdeec63](https://github.com/extra2000/zabbix-formula/commit/cdeec633137083940baf4c151d87607fc8f55899))


### Fixes

* **config.files:** Add support for rootful Podman ([0f43992](https://github.com/extra2000/zabbix-formula/commit/0f43992b298991ee8e46a1841118bf7df0ffb146))
* **podman:** change from `cni-podman0` to `cni-podman1` to avoid conflict with rootful Podman ([2418cfd](https://github.com/extra2000/zabbix-formula/commit/2418cfd40a77cecad38c5fe8fdf5e41c76cc1c9c))
* **service.postgres:** Increase memory limit from 256Mi to 512Mi to prevent OOM ([ea6ff61](https://github.com/extra2000/zabbix-formula/commit/ea6ff6126372dd05a91480804046e068580b0119))
* **zabbix_server.conf:** Make the config file mount as `read-only` ([75068f9](https://github.com/extra2000/zabbix-formula/commit/75068f96c6d2056cd7854d667d5938ec1c901fc5))

## [3.1.0](https://github.com/extra2000/zabbix-formula/compare/v3.0.0...v3.1.0) (2021-03-17)


### Features

* Add timezone configurations ([af979fe](https://github.com/extra2000/zabbix-formula/commit/af979fef57e235b7df49fe56c29239377ddc5b37))

## [3.0.0](https://github.com/extra2000/zabbix-formula/compare/v2.2.0...v3.0.0) (2021-03-17)


### ⚠ BREAKING CHANGES

* Pillar format has changed and Zabbix server is now using host network.

### Code Refactoring

* Remove Zabbix agent ([2e89f12](https://github.com/extra2000/zabbix-formula/commit/2e89f126ad63f29858dcd2692136cec4b5845a26))


### Fixes

* Using host network for Zabbix server to ensure active checks are able to reach localhost Zabbix agent ([34c2d85](https://github.com/extra2000/zabbix-formula/commit/34c2d856a30f7d3081fa9ce27d48a0b279d04d63))

## [2.2.0](https://github.com/extra2000/zabbix-formula/compare/v2.1.0...v2.2.0) (2021-03-16)


### Features

* **zabbix_server.conf:** Add `zabbix_server.conf` as volume ([6e8bba7](https://github.com/extra2000/zabbix-formula/commit/6e8bba7f956a7b5ff46c30df528fd64e79efe95d))

## [2.1.0](https://github.com/extra2000/zabbix-formula/compare/v2.0.0...v2.1.0) (2021-03-15)


### Features

* **zabbix-agent:** Update from version `5.0.7` to `5.2.5` ([063b93d](https://github.com/extra2000/zabbix-formula/commit/063b93d757c0d6847d38db81b2c21272c0232f40))
* **zabbix-server-pgsql:** Update from version `5.0.7` to `5.2.5` ([5a97bb6](https://github.com/extra2000/zabbix-formula/commit/5a97bb67b436dbc9307f0b686efade889075392f))
* **zabbix-web-nginx-pgsql:** Update from version `5.0.7` to `5.2.5` ([66938eb](https://github.com/extra2000/zabbix-formula/commit/66938eb192b4c3b81bd023b415d0de357e4140ce))

## [2.0.0](https://github.com/extra2000/zabbix-formula/compare/v1.3.0...v2.0.0) (2021-03-14)


### ⚠ BREAKING CHANGES

* **config/nginx.sls:** This `zabbix-formula` now expects NGINX deployment via Podman.

### Code Refactoring

* **defaults.yaml:** Prefix image name with `docker.io` ([6d77e3c](https://github.com/extra2000/zabbix-formula/commit/6d77e3c7a50ab7d9d4b9173f954b344ac53fb4a0))


### Fixes

* **config/nginx.sls:** Fix for NGINX deployment via [nginx-formula v2.0.0](https://github.com/extra2000/nginx-formula/releases/tag/v2.0.0) ([fadf47f](https://github.com/extra2000/zabbix-formula/commit/fadf47fbac47aa5fa2490cc2740489dad8711dcc))

## [1.3.0](https://github.com/extra2000/zabbix-formula/compare/v1.2.0...v1.3.0) (2021-03-14)


### Features

* **service:** Implement `destroy` function for `service.postgres` and `service.server` states ([024e56f](https://github.com/extra2000/zabbix-formula/commit/024e56f5efc8078ce2efdfe9a3dc8cafa61eef25))


### Fixes

* **networking:** Make `bridge` customizable to prevent pod networking conflicts ([93da047](https://github.com/extra2000/zabbix-formula/commit/93da047c30f213453db1228dd26debac7f8f0062))
* **service:** Ensure all images will be successfully pulled and destroy existing pods before creating new pods ([bfd0ef4](https://github.com/extra2000/zabbix-formula/commit/bfd0ef44cff1c3297dbf379f597ae1f8b9e5673d))


### Code Refactoring

* **pods:** Explicitly define capabilities ([dacb54f](https://github.com/extra2000/zabbix-formula/commit/dacb54fa1d731f40c67afc2e80e82e0fe1a9d915))

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
