#!/usr/bin/bash


grep bash /etc/passwd | cut -f1 -d: > user.csv

while read -r line
do
	awk ‘{"file.csv"; print ($1)}’> new_file.csv

done < file.csv > new_file.csv

comm -3 user.csv new_file1.csv > new_user.csv

for i in $( cat users.txt ); do
    useradd $i
    echo "user $i added successfully!"
    echo $i:$i"123" | chpasswd
    echo "Password for user $i changed successfully"
done


