#!/bin/bash

sudo rm /var/log/nginx/*
sudo systemctl reload nginx.service

sudo rm /var/log/mysql/slow.log
sudo systemctl restart mariadb.service

npm run build
sudo systemctl restart isucondition.nodejs.service
