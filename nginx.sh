#!/bin/bash

sudo cp -rf app.conf /etc/nginx/sites-available/todocicd
echo "Nginx configuration copied"
chmod 710 /var/lib/jenkins/workspace/django-cicd
sudo ln -sf /etc/nginx/sites-available/todocicd /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx started"

sudo systemctl status nginx