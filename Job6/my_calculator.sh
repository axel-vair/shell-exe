#!/bin/bash 

#déclaration variable result avec 3 arguments (premier chiffre, opérateur, deuxième chiffre)
#on renvoie le résultat avec un appel de la variable pour multiplier sur mac on /*
result=$(($1 $2 $3))
echo "Voici le résultat : $result"
