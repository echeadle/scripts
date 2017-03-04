#!/bin/bash
variable=$(cat <<EOF
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/$releasever/$basearch/
gpgcheck=0
enabled=1
EOF 
)
echo "$variable"

