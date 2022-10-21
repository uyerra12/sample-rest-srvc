#!/bin/bash

#sudo apt update
#sudo apt install nodejs
#node -v
#sudo apt install npm
#npm install -g wrangler


#echo "$CF_WORKER_ADMIN_KEY"

env

echo "$WORKERS"
echo "$BRANCH"

y="_"${BRANCH,,}
echo $y

default_list="WORKER1;WORKER2"

if [ "$WORKERS" == "$default_list" ]
then
	declare -a workers_list=("one" "two" "three")
	for i in "${workers_list[@]}"; do
		echo "$i"
	done
	
else
	IFS=';' read -ra WORKERSLIST <<< "$WORKERS"
	for i in "${WORKERSLIST[@]}"; do
		echo "$i"
	done
fi
