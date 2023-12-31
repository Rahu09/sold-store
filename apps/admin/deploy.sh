#!/bin/bash
export PATH=$PATH:/home/ubuntu/.nvm/versions/node/v20.5.1/bin

cd /home/ubuntu/TheSoldStore
git pull origin main
npm install
npm run build
pm2 stop admin 
pm2 start npm --name "admin" --run "start:admin"