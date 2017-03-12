#!/bin/bash


./configure --sbin-path=/usr/sbin/nginx --conf-path=/etc/nginx/nginx.conf \
--error-log-path=/var/log/nginx/error.log  \
--http-log-path=/var/log/nginx/access.log --with-debug --with-pcre  \
--with-http_ssl_module --pid-path=/run/nginx.pid

apt-get install build-essential
apt-get install libpcre3 libpcre3-dev llibpcrecpp0 gzip
apt-get install zlib1g-dev
apt-get install libssl-dev


[Unit]
Description=The NGINX HTTP and reverse proxy server
After=syslog.target network.target remote-fs.target nss-lookup.target

[Service]
Type=forking
PIDFile=/run/nginx.pid
ExecStartPre=/usr/sbin/nginx -t
ExecStart=/usr/sbin/nginx
ExecReload=/bin/kill -s HUP $MAINPID
ExecStop=/bin/kill -s QUIT $MAINPID
PrivateTmp=true

[Install]
WantedBy=multi-user.target
