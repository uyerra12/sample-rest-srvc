#!/bin/bash

#sudo apt update
#sudo apt install nodejs
#node -v
#sudo apt install npm
#npm install -g wrangler


#echo "$CF_WORKER_ADMIN_KEY"

echo "$WORKERS"

if [ "$WORKERS" == *"empty"* ]
then
	arr=( one two three )
	for i in "${arr[@]}"; do
		echo "$i"
	done
	
else
	IFS=';' read -ra WORKERSLIST <<< "$WORKERS"
	for i in "${WORKERSLIST[@]}"; do
		echo "$i"
	done
fi
