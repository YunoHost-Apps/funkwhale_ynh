<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Funkwhale YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/funkwhale.svg)](https://ci-apps.yunohost.org/ci/apps/funkwhale/) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/funkwhale.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/funkwhale.maintain.svg)

[![Instalatu Funkwhale YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=funkwhale)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Funkwhale YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Funkwhale is a community-driven project that lets you listen and share music and audio within a decentralized, open network. 

**Paketatutako bertsioa:** 1.4.0~ynh3

**Demoa:** <https://demo.funkwhale.audio>

## Pantaila-argazkiak

![Funkwhale(r)en pantaila-argazkia](./doc/screenshots/screenshot1.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://funkwhale.audio/>
- Erabiltzaileen dokumentazio ofiziala: <https://docs.funkwhale.audio/users/index.html>
- Administratzaileen dokumentazio ofiziala: <https://docs.funkwhale.audio/admin/index.html>
- Jatorrizko aplikazioaren kode-gordailua: <https://dev.funkwhale.audio/funkwhale/funkwhale>
- YunoHost Denda: <https://apps.yunohost.org/app/funkwhale>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/funkwhale_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/funkwhale_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/funkwhale_ynh/tree/testing --debug
edo
sudo yunohost app upgrade funkwhale -u https://github.com/YunoHost-Apps/funkwhale_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
