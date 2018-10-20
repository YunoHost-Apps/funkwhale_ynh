# Funkwhale
A modern, convivial and free music server on YunoHost

[![Install Funkwhale with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=funkwhale)

Installation requires a dedicated domain for now. I hope subpath installation will be possible in the future.

**Shipped version:** 0.17.0 (this is an Alpha version!)

## Admin

The admin uses the login you provided at installation. The password is the same you use for YunoHost.

The admin interface is accessible with the address: your.domain.fr/api/admin

# State of this package

* works fine:

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

## Links

 * Report a bug about this package: https://github.com/YunoHost-Apps/funkwhale_ynh
 * Report a bug about Funkwhale itself: https://code.eliotberriot.com/funkwhale/funkwhale/
 * Documentation: https://docs.funkwhale.audio
 * Funkwhale website: https://funkwhale.audio/
 * YunoHost website: https://yunohost.org/
