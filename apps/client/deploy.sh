#!/bin/bash
export PATH=$PATH:/home/ubuntu/.nvm/versions/node/v20.5.1/bin

cd /home/ubuntu/TheSoldStore
git pull origin main
npm install
npm run build
pm2 stop client 
pm2 start npm --name "client" -- run "start:client"