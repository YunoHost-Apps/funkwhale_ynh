* L'installation n�cessite un domaine ou un sous-domaine d�di�. L'installation dans un chemin du domaine n'est pas prise en charge par le projet en amont en raison des exigences de d�pendance.

* Admin

L'administrateur utilise le login que vous avez fourni lors de l'installation. Le mot de passe est le m�me que celui que vous utilisez pour YunoHost.

L'interface d'administration est accessible � l'adresse : votre.domaine.fr/api/admin
Pour ajouter une collection de fichiers musicaux � une biblioth�que dans votre installation YunoHost de Funkwhale, cr�ez un lien symbolique vers votre collection intitul�e "music" dans `/home/yunohost.app/funkwhale/data/`.
`foo@bar:~$sudo ln -s /your/music/collection /home/yunohost.app/funkwhale/data/music`
Les fichiers peuvent ensuite �tre ajout�s � votre biblioth�que � partir de l'onglet *Envoi* dans une biblioth�que musicale sous la rubrique **Importer de la musique de votre serveur**.
