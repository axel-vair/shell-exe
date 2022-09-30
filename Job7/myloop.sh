#!/bin/bash 
#on déclare une variable nbr qui est = à 
nbr=1
#jusqu'à ce que la variablr nbr soit différente de 11 on boucle l'écho string + $nbr

while ((nbr!=11))
do 
	echo "Je suis un script qui arrive à faire un boucle 
$nbr"
#on incrémente  de 1 à chaque tour pour éviter l'infini
((nbr++))

done 

