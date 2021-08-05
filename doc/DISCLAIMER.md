* Any known limitations, constrains or stuff not working, such as (but not limited to):
    * Installation requires a dedicated domain or subdomain. Installing in a subpath is not supported by the upstream project due to dependency requirements.

* Admin

The admin uses the login you provided at installation. The password is the same you use for YunoHost.
The admin interface is accessible at the address: `your.domain.fr/api/admin`

To add a collection of music files to a library in your YunoHost installation of Funkwhale, create a symlink to your collection titled "music" in `/home/yunohost.app/funkwhale/data`
```console
foo@bar:~$sudo ln -s /your/music/collection /home/yunohost.app/funkwhale/data/music
```
The files can then be added to your library from the *uploading* tab in a music library under the heading **Import music from your server**.
