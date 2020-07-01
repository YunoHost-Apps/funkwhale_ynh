# Funkwhale

[![Integration level](https://dash.yunohost.org/integration/funkwhale.svg)](https://dash.yunohost.org/appci/app/funkwhale)  
[![Install Funkwhale with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=funkwhale)

> *This package allows you to install Funkwhale quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.

## Overview
A modern, convivial and free music server on YunoHost

Installation requires a dedicated domain or subdomain. Installing in a subpath is not supported by the upstream project due to dependency requirements.

**Shipped version:** 0.21.1

## Screenshots

![](https://funkwhale.audio/img/desktop.5e79eb16.jpg)

## Admin

The admin uses the login you provided at installation. The password is the same you use for YunoHost.

The admin interface is accessible at the address: your.domain.fr/api/admin

# State of this package

* The following have been tested with this package and work fine:

  * [x] install/remove/backup/remove/upgrade with x86_64
  * [x] import file with web interface, imports from youtube, interraction with MusicBrainz
  * [x] [Subsonic API](https://docs.funkwhale.audio/users/apps.html)
  * [x] [Federation](https://docs.funkwhale.audio/federation.html) tests
  * [x] [CLI Import](https://docs.funkwhale.audio/importing-music.html#from-music-directory-on-the-server) Remember to `source $final_path/venv/bin/activate`, then `source $final_path/load_env` before typinh using manage.py. 
  * [x] ARM support

* end-user configuration required:
  * [x] LDAP integration

* to be added:
  * [ ] Store files in HOME, see https://github.com/YunoHost-Apps/funkwhale_ynh/issues/15

## Documentation

 * Official documentation: https://docs.funkwhale.audio

## YunoHost specific features

#### Supported architectures

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/funkwhale%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/funkwhale/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/funkwhale%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/funkwhale/)
* Jessie x86-64b - [![Build Status](https://ci-stretch.nohost.me/ci/logs/funkwhale%20%28Apps%29.svg)](https://ci-stretch.nohost.me/ci/apps/funkwhale/)

## Links

 * Report a bug about this package: https://github.com/YunoHost-Apps/funkwhale_ynh
 * Report a bug about Funkwhale itself: https://code.eliotberriot.com/funkwhale/funkwhale/
 * App website: https://docs.funkwhale.audio
 * Upstream app repository: https://dev.funkwhale.audio/funkwhale/funkwhale
 * YunoHost website: https://yunohost.org/

---

Developers info
----------------

**Only if you want to use a testing branch for coding, instead of merging directly into master.**
Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/funkwhale_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/funkwhale_ynh/tree/testing --debug
or
sudo yunohost app upgrade funkwhale -u https://github.com/YunoHost-Apps/funkwhale_ynh/tree/testing --debug
```
