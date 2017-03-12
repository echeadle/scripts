#creating the null client: server 1
systemctl enable postfix
systemctl start postfix
vim /etc/postfix
postfix check
# there is a postconf command that can change the 800+ variables

#creating a postfix server server2
#modify  main.cf
systemctl restart postfix
firewall-cmd --permanent --add-service=smtp
firewall-cmd --reload
