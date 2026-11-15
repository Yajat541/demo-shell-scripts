#!/bin/bash

function create_user {

read -p "enter the username:" username

sudo useradd -m "$username"

echo "user created successfully"

}

for (( num=1 ; num<=5 ; num++ ))
do
	create_user
done

