#! /usr/bin/env bash

# Install packages
apt-get update
apt-get install -y nodejs
apt-get install  -y nginx
apt-get install -y letsencrypt
apt-get install -y npm
npm install -g pm2
apt-get install -y mongodb
apt-get install -y python2

# Add configuration
python2 setup.py

# Restart services
systemctl restart mongodb
systemctl restart nginx
