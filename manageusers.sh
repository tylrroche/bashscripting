#!/bin/bash

echo -n "would you like to create users, yes or no: "

read Decision
if [ $Dicision = yes ]
then
	echo -n "user name:" 
	read name 
	aws iam create-user --user-name $name
	echo "creating username $name"
	echo "updated list of users"
	aws iam list-users
else
	echo "user not created"
fi

echo -n "would you like to create a group, yes or no:"
read answer

if [ $answer = yes ]
then
	echo -n "group name: "
	read group 
	aws iam create-group --groupname $group
	echo "updated list of groups"
	aws iam list-groups
else
	echo "group not created"
fi

echo "would you like to add users to groups, yes or no:"
read addusers
if [ $addusers = yes ] 
then
	echo -n "user name:"
	read adduser 
	echo -n "group name:"
	read addgroup
	aws iam add-user-to-group --user-name $adduser --group-name $addgroup
fi


