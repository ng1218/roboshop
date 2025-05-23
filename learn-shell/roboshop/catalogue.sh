source common.sh
component_name=cart

nodejs

cp ${pwd}/mongo.repo /etc/yum.repos.d/mongo.repo
dnf install mongodb-mongosh -y
mongosh --host mongodb-dev.nareshdevops1218.online </app/db/master-data.js

systemd_setup