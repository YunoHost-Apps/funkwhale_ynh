* Installation requires a dedicated domain or subdomain. Installing in a subpath is not supported by the upstream project due to dependency requirements.

* Admin
  * The admin uses the login you provided at installation. The password is the same you use for YunoHost.
  * The admin interface is accessible at the address: `__DOMAIN__/api/admin`

To add a collection of music files to a library in your YunoHost installation of Funkwhale, create a symlink to your collection titled "music" in `__DATA_DIR__/data`
```console
sudo ln -s /your/music/collection __DATA_DIR__/data/music
```
The files can then be added to your library from the *uploading* tab in a music library under the heading **Import music from your server**.
