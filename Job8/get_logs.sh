#!/bin/bash 

#Déclaration de la variable d avec la commande date et le format désiré. (les : affichent un / sur mac
#malgré les tentatives d'échapper le caractère... on se contente du tiret)
d=$(date +'%d-%m-%Y-%H-%M')

#last affiche les connexions, grep vient récupérer toutes celles de l'utilisateur axelvair
#wc -l va compter les lignes puis création d'un fichier avec le nombre de lignes
last grep "axelvair" | wc -l > /Users/axelvair/shell-exe/Job8/number_connection-$d
mkdir -p /Users/axelvair/shell-exe/Job8/Backup
tar -cf /Users/axelvair/shell-exe/Job8/Backup/number_connection-$d.tar number_connection-$d
rm /Users/axelvair/shell-exe/Job8/number_connection-$d

#Abraham m'a montré comment faire fonctionner Cron sur MacOS. Bravo à lui, le mérite lui revient, il s'agissait seulement de donner les chemins à toutes les commandes ! 
