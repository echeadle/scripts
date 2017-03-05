#!/bin/bash
#Need to run with SUDO
#These commands work with Centos and Red Hat OS 7
#Ubuntu to come
#set -x
OS=centos
OSRELEASE=7
REPO=$(cat <<EOF
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/${OS}/${OSRELEASE}/\$basearch/
gpgcheck=0
enabled=1
EOF
)
WEBCONF=$(cat <<EOF
server {
  server_name localhost;

  location / {
    root /var/www/hos/html/;
    index index.html;
  }
}
EOF
)
#echo "$REPO"
echo "$REPO" >> /etc/yum.repos.d/nginx.repo
rpm --import nginx_signing.key
yum makecache fast
yum install -y nginx
systemctl enable nginx
systemctl start nginx
netstat -ntlp | grep nginx
echo "--------------------------------------------------------------------"
curl -I http://localhost
echo "--------------------------------------------------------------------"
ls /var/log/nginx
ls ls /usr/share/nginx
ls /etc/nginx
mkdir /var/www/html
touch /var/www/html/index.html
chown -R nginx.nginx /var/www/*
ps -ef --forest | grep nginx
#worker_process should equal number of cores
lscpu
#Check Conf file
nginx -t
