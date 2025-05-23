source common.sh
component_name=frontend

dnf install nginx -y 
systemctl enable nginx 
systemctl start nginx
cp nginx.conf /etc/nginx/nginx.conf
rm -rf /usr/share/nginx/html/*
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip 
cd /usr/share/nginx/html 
unzip /tmp/frontend.zip
systemctl restart nginx 