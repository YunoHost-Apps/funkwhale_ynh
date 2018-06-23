# Funkwhale
A modern, convivial and free music server on YunoHost

[![Install Funkwhale with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=funkwhale)

Installation requires a dedicated domain for now. I hope subpath installation will be possible in the future.

**Shipped version:** 0.14.2 (this is an Alpha version!)

## Admin

Admin password is **funkwhale**, login is the user you provided at installation.

The admin interface is accessible with the address: your.domain.fr/api/admin

# State of this package

* works fine:

  * [x] install/remove/backup/remove/upgrade with x86_64
  * [x] import file with web interface, imports from youtube, interraction with MusicBrainz
  * [x] [Subsonic API](https://docs.funkwhale.audio/users/apps.html)
   
* to be tested:
  * [ ] [Federation](https://docs.funkwhale.audio/federation.html) tests
  * [ ] [CLI Import](https://docs.funkwhale.audio/importing-music.html#from-music-directory-on-the-server)

* to be added:
  * [ ] ARM support

## Links

 * Report a bug about this package: https://github.com/YunoHost-Apps/funkwhale_ynh
 * Report a bug about Funkwhale itself: https://code.eliotberriot.com/funkwhale/funkwhale/
 * Documentation: https://docs.funkwhale.audio
 * Funkwhale website: https://funkwhale.audio/
 * YunoHost website: https://yunohost.org/
