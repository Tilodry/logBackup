# logBackup
Backup automatique des logs de mon site internet hébergé sur un VPS sous Ubuntu

## Création du script
- Copier le script sur votre serveur
- Définir dans "backup_file" quel fichier(s) vous souhaitez sauvegarder
- Définir dans "dest_folder" le répertoire dans lequel vous souhaitez créer votre backup
- Définir le degré de précision du nom de votre fichier ainsi que son suffix, respectivement dans les variables "day" et "suffix"

### Lancement du script
Si vous voulez lancer le script a la main, sans automatisation, il suffit d'executer : 
- ```shell
  chmod u+x nomDuScript
  ```

- ```shell
  ./nomDuScript
  ```

## Automatisation

Pour l'automatisation j'utilise cron, un programme installé par défaut sur les systèmes Unix

### Création de l'automatisation
Pour créer l'automatisation il suffit de lancer cron 
- ```shell
  sudo crontab -e
  ```

Ce qui ouvrira ceci :

```shell
# Edit this file to introduce tasks to be run by cron.
#
# [...]
#
# m h  dom mon dow   command

```

Puis de définir le script et la fréquence a laquelle il doit être executer :

- m -> Minute

- h -> Heure

- dom -> Jour dans le mois

- mon -> Mois

- dow -> Jour de la semaine

Mon script s'exécute tout les jours à minuit, ma ligne de commande est donc 

```shell
0 0 * * * bash /home/tilodry/logSiteWeb/backup.sh
```

