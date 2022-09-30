#!/bin/zsh
#Le fichier csv stockée dans une variable
file=/Users/axelvair/shell-exe/Job9/Shell_Userlist.csv 
#boucle while qui va supprimer la virgule avec la commande IFS
while IFS="," read -r col1 col2 col3 col4 col5 
do   
#Si la colonne 1 possède des chiffres alors elle est affichée, permet de skip la première ligne.
if [[ $col1 = [0-9]* ]]; then 
#variable username déclarée pour stocker les variables $col2 $col3 et en faire une nouvelle variable
#$username qu'on met en lowercase et à laquelle on enlève les espace
username=$col2$col3 
echo ${username:l} | sed 's/ //g' 
#Si la variable $col5 est égale à Admin alors on créé un user avec un Id, faisant partie du primarygroup
#On l'ajoute au groupe admin, on lui donne un UserShell et on lui met le password correspondant à la variable $col4
     if [[ $col5 = Admin ]]; then 
    sudo dscl . -create /Users/$username UniqueID $col1
    sudo dscl . -create /Users/$username PrimaryGroupID 20
    sudo dscl . -create /Users/$username UserShell /bin/zsh
    sudo dscl . -append /Groups/admin GroupMembership $username
    sudo dscl . -passwd /Users/$username $col4

#Sinon on créé seulement l'uniqueID, le MDP et on donne le shell ZSH; 
else 
    sudo dscl . -create /Users/$username UniqueID $col1
    sudo dscl . -create /Users/$username UserShell /bin/zsh
    sudo dscl . -passwd /Users/$username $col4


fi
#Si la variable col5 contient le string admin alors on ajoutte un utilisateur, on lui ajoute un ID et on le met dans le groupe admin. 
    
fi
done < "$file"