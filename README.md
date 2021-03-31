# Funkwhale for YunoHost

[![Integration level](https://dash.yunohost.org/integration/funkwhale.svg)](https://dash.yunohost.org/appci/app/funkwhale) ![](https://ci-apps.yunohost.org/ci/badges/funkwhale.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/funkwhale.maintain.svg)  
[![Install Funkwhale with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=funkwhale)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Funkwhale quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
A modern, convivial and free music server on YunoHost

Installation requires a dedicated domain or subdomain. Installing in a subpath is not supported by the upstream project due to dependency requirements.

**Shipped version:** 1.1

## Screenshots

![](https://upload.wikimedia.org/wikipedia/commons/d/d8/Capture_d%27%C3%A9cran_de_la_page_d%27accueil_de_Funkwhale.png)

## Demo

* [Official demo](https://demo.funkwhale.audio)

**Username:** demo **Password:** demo

## Demo

* [Official demo](https://demo.funkwhale.audio)

**Username:** demo **Password:** demo

## Admin

The admin uses the login you provided at installation. The password is the same you use for YunoHost.

The admin interface is accessible at the address: `your.domain.fr/api/admin`

## Documentation

 * Official documentation: https://docs.funkwhale.audio

## YunoHost specific features

 * Are LDAP and HTTP auth supported? **Yes**
 * Can the app be used by multiple users? **Yes**

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/funkwhale%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/funkwhale/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/funkwhale%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/funkwhale/)

## Links

 * Report a bug: https://github.com/YunoHost-Apps/funkwhale_ynh/issues
 * App website: https://docs.funkwhale.audio
 * Upstream app repository: https://dev.funkwhale.audio/funkwhale/funkwhale
 * YunoHost website: https://yunohost.org/

---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/funkwhale_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/funkwhale_ynh/tree/testing --debug
or
sudo yunohost app upgrade funkwhale -u https://github.com/YunoHost-Apps/funkwhale_ynh/tree/testing --debug
```
