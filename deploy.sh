#!/bin/bash

#sudo apt update
#sudo apt install nodejs
#node -v
#sudo apt install npm
#npm install -g wrangler


echo "$CF_WORKER_ADMIN_KEY"

declare -a StringArray=("autosuggest-index-worker" "educator-index-worker")

for value in ${StringArray[@]}; do
    echo $value
done
