#!/bin/bash
#Si argument1 = hello alors on affiche le premier echo. Si $1 = bye on affiche au revoir
if [ $1 == "Hello" ]
then 
	echo "Bonjour, je suis un script!"
else [ $1 == "Bye" ] 
	echo "Au revoir ....."
fi 

