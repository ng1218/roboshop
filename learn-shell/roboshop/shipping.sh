source common.sh
component_name=shipping

projectsetup_prereq

dnf install mysql -y 
mysql -h mysql-dev.nareshdevops1218.online -uroot -pRoboShop@1 < /app/db/schema.sql
mysql -h mysql-dev.nareshdevops1218.online -uroot -pRoboShop@1 < /app/db/app-user.sql 
mysql -h mysql-dev.nareshdevops1218.online -uroot -pRoboShop@1 < /app/db/master-data.sql

systemd_setup
