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

tag=$(echo $BRANCH | tr '[:upper:]' '[:lower:]')
tag="_${tag}"
echo $tag

default_list="WORKER1;WORKER2"

filename="keys.txt"

KEY_PREFIXES="CF_WORKER_ADMIN_KEY1;CF_WORKER_ADMIN_KEY2;CF_WORKER_ADMIN_KEY3;CF_WORKER_ADMIN_KEY4;CF_WORKER_ADMIN_KEY5"
IFS=';' read -ra PREFIXES <<< "$KEY_PREFIXES"

cat $filename

for i in "${PREFIXES[@]}"; do
	replace=$i$tag
	eval replace='$'$replace
	echo $replace
	sed -i "s/$i/$replace/" $filename
done

cat $filename

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
