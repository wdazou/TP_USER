#!/usr/bin/bash

#liste les noms des utilisateurs 
grep bash /etc/passwd | cut -f1 -d: > user.csv

while read -r line
do
	#afficher seulement le nom d'utilasateur pour faciliter la comparaison
	awk ‘{"file.csv"; print ($1)}’> new_file.csv

done < file.csv > new_file.csv
#comparaison avec le base donnée
comm -3 user.csv new_file1.csv > new_user.csv

#creation des utilisateur ou employer qui est pas dans le base de donnée
for i in $( cat users.txt ); do
    useradd $i
    echo "user $i added successfully!"
    echo $i:$i"123" | chpasswd
    echo "Password for user $i changed successfully"
done


