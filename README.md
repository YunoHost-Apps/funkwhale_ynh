# Funkwhale for YunoHost

[![Integration level](https://dash.yunohost.org/integration/funkwhale.svg)](https://dash.yunohost.org/appci/app/funkwhale) ![](https://ci-apps.yunohost.org/ci/badges/funkwhale.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/funkwhale.maintain.svg)  
[![Install Funkwhale with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=funkwhale)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Funkwhale quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview
A modern, convivial and free music server on YunoHost

Installation requires a dedicated domain or subdomain. Installing in a subpath is not supported by the upstream project due to dependency requirements.

**Shipped version:** 1.1

## Screenshots

![](https://funkwhale.audio/img/desktop.5e79eb16.jpg)

## Demo

* [Official demo](https://demo.funkwhale.audio)

**Username:** demo **Password:** demo

## Admin

The admin uses the login you provided at installation. The password is the same you use for YunoHost.
The admin interface is accessible at the address: `your.domain.fr/api/admin`

To add a collection of music files to a library in your YunoHost installation of Funkwhale, create a symlink to your collection titled "import" in `/var/www/funkwhale`
```console
foo@bar:~$sudo ln -s /your/music/collection /var/www/funkwhale/import
```
The files can then be added to your library from the *uploading* tab in a music library under the heading **Import music from your server**.


# State of this package

* The following have been tested with this package and work fine:

  * [x] install/remove/backup/remove/upgrade with x86_64 and ARM
  * [x] import file with web interface, imports from YouTube, interraction with MusicBrainz
  * [x] [Subsonic API](https://docs.funkwhale.audio/users/apps.html)
  * [x] [Federation](https://docs.funkwhale.audio/federation.html) tests
  * [x] [CLI Import](https://docs.funkwhale.audio/importing-music.html#from-music-directory-on-the-server) Remember to `source $final_path/venv/bin/activate`, then `source $final_path/load_env` before typinh using manage.py.

* to be added:
  * [ ] Store files in HOME, see https://github.com/YunoHost-Apps/funkwhale_ynh/issues/15

## Documentation

 * Official documentation: https://docs.funkwhale.audio

## YunoHost specific features

 * Are LDAP and HTTP auth supported? **Yes**
 * Can the app be used by multiple users? **Yes**

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/funkwhale%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/funkwhale/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/funkwhale%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/funkwhale/)

## Links

 * Report a bug about this package: https://github.com/YunoHost-Apps/funkwhale_ynh
 * App website: https://docs.funkwhale.audio
 * Upstream app repository: https://dev.funkwhale.audio/funkwhale/funkwhale
 * YunoHost website: https://yunohost.org/

---

## Developers info

Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/funkwhale_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/funkwhale_ynh/tree/testing --debug
or
sudo yunohost app upgrade funkwhale -u https://github.com/YunoHost-Apps/funkwhale_ynh/tree/testing --debug
```
