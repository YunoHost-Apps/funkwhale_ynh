* L'installation nécessite un domaine ou un sous-domaine dédié. L'installation dans un chemin du domaine n'est pas prise en charge par le projet en amont en raison des exigences de dépendance.

* Admin
  * L'administrateur utilise le login que vous avez fourni lors de l'installation. Le mot de passe est le même que celui que vous utilisez pour YunoHost.
  * L'interface d'administration est accessible à l'adresse : `__DOMAIN__/api/admin`

Pour ajouter une collection de fichiers musicaux à une bibliothèque dans votre installation YunoHost de Funkwhale, créez un lien symbolique vers votre collection intitulée "music" dans `__DATA_DIR__/data/`.
```console
sudo ln -s /votre/collection/de/musique __DATA_DIR__/data/music
```
Les fichiers peuvent ensuite être ajoutés à votre bibliothèque à partir de l'onglet *Envoi* dans une bibliothèque musicale sous la rubrique **Importer de la musique de votre serveur**.
