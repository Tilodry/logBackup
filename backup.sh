#!/bin/bash
# Création de backup des logs du serveur Web
# Définition des fichiers a backup

backup_file="/var/log/apache2/access.log"

# Définition d'ou les backup
dest_folder="/home/tilodry/logSiteWeb/"

day=$(date +%C-%B-%H)
suffix="tilodry.fr-log"
archive_file="$day-$suffix.tgz"

echo "Backup de $backup_file vers $dest_folder"
date

tar czf $dest_folder/$archive_file -P $backup_file

echo "Backup effectuée"
date

ls -lh $dest
