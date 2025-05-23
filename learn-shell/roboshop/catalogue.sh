source common.sh
component_name=catalogue

nodejs

cp mongo.repo /etc/yum.repos.d/mongo.repo
dnf install mongodb-org-shell -y
mongo --host mongodb-dev.nareshdevops1218.online </app/db/master-data.js

systemd_setup