# Funkwhale pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/funkwhale.svg)](https://dash.yunohost.org/appci/app/funkwhale) ![](https://ci-apps.yunohost.org/ci/badges/funkwhale.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/funkwhale.maintain.svg)  
[![Installer Funkwhale avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=funkwhale)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer Funkwhale rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*

## Vue d'ensemble
Un serveur de musique moderne, convivial et gratuit sur YunoHost

L'installation nécessite un domaine ou un sous-domaine dédié. L'installation dans un chemin du domaine n'est pas prise en charge par le projet en amont en raison des exigences de dépendance.

**Version incluse :** 1.1.1

## Captures d'écran

![](https://upload.wikimedia.org/wikipedia/commons/d/d8/Capture_d%27%C3%A9cran_de_la_page_d%27accueil_de_Funkwhale.png)

## Démo

* [Démo officielle](https://demo.funkwhale.audio)

**Nom d’utilisateur :** demo  **Mot de passe :** demo

## Admin

L'administrateur utilise le login que vous avez fourni lors de l'installation. Le mot de passe est le même que celui que vous utilisez pour YunoHost.

L'interface d'administration est accessible à l'adresse : votre.domaine.fr/api/admin

## Documentation

 * Documentation officielle : https://docs.funkwhale.audio

## Caractéristiques spécifiques YunoHost

#### Support multi-utilisateur

* L'authentification LDAP et HTTP est-elle prise en charge ? **OUI**
* L'application peut-elle être utilisée par plusieurs utilisateurs ? **OUI**

#### Architectures supportées

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/funkwhale.svg)](https://ci-apps.yunohost.org/ci/apps/funkwhale/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/funkwhale.svg)](https://ci-apps-arm.yunohost.org/ci/apps/funkwhale/)

## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/funkwhale_ynh/issues
 * Site de l'application : https://docs.funkwhale.audio
 * Dépôt de l'application principale : https://dev.funkwhale.audio/funkwhale/funkwhale
 * Site web YunoHost : https://yunohost.org/

---

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/funkwhale_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/funkwhale_ynh/tree/testing --debug
ou
sudo yunohost app upgrade funkwhale -u https://github.com/YunoHost-Apps/funkwhale_ynh/tree/testing --debug
```
