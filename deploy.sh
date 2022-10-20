#!/bin/bash

sudo apt update
sudo apt install nodejs
node -v
sudo apt install npm
npm install -g wrangler


echo "$CF_WORKER_ADMIN_KEY"
