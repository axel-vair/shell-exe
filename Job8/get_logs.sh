#!/bin/bash 

d=$(date +'%d-%m-%Y-%H-%M')

last grep "axelvair" | wc -l > number_connection-$d
mkdir -p Backup
tar -cf number_connection-$d.tar number_connection-$d
mv number_connection-$d.tar ./Backup/ && rm number_connection-$d
