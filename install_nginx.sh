#!/bin/bash
#Need to run with SUDO
set -x
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
#echo "$REPO"
echo "$REPO" >> /etc/yum.repos.d/nginx.repo
