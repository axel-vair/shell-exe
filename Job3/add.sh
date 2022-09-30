#!/bin/bash 
#on déclare une variable puis l'on entre argument 1 + argument 2
#afin de pouvoir additionner les deux arguments que l'on entrera 
#au lancement du script. Puis on affiche avec echo + appel de la variable
result=$(($1 + $2))
echo 'Voici le résultat :' $result
