#!/bin/bash
echo "Inicio de Script - Install NGINX" >~/mensaje.txt

#Install NGINX
yum update -y
yum install nginx -y
systemctl enable nginx
systemctl start nginx

echo "Fin de script - Install NGINX" >~/mensaje.txt