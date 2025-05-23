source common.sh
component_name=catalogue

nodejs

#cp mongo.repo /etc/yum.repos.d/mongo.repo
dnf install mongodb-mongosh -y
mongo --host mongodb-dev.nareshdevops1218.online </app/schema/catalogue.js

systemd_setup