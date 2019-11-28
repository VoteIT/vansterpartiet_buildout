#!/bin/bash
#Ment to be run as root after buildout is done. Will obtain cert and install on nginx debian

cd /etc/nginx
ln -s /home/voteit/srv/vansterpartiet_buildout/etc/nginx.conf ./sites-available/v.conf
cd sites-enabled
ln -s ../sites-available/v.conf

service nginx stop
certbot certonly --standalone -d v.voteit.se
service nginx start
