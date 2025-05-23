
pwd=$(pwd)

projectsetup_prereq(){
    useradd roboshop

    cp ${component_name}.service /etc/systemd/system/${component_name}.service
    mkdir /app 
    curl -L -o /tmp/${component_name}.zip https://roboshop-artifacts.s3.amazonaws.com/${component_name}-v3.zip 
    cd /app 
    unzip /tmp/${component_name}.zip
    cd /app  
}

nodejs(){
    dnf module disable nodejs -y
    dnf module enable nodejs:20 -y
    dnf install nodejs -y

    projectsetup_prereq
    
    npm install 
}

golang(){
    dnf install golang -y
    projectsetup_prereq
    go mod init ${component_name}
    go get 
    go build 
}

python(){
    dnf install python3 gcc python3-devel -y

    projectsetup_prereq
    
    pip3 install -r requirements.txt
}

java(){
    dnf install maven -y
    projectsetup_prereq
    mvn clean package 
    mv target/${component_name}-1.0.jar ${component_name}.jar  
}

systemd_setup(){
    systemctl daemon-reload
    systemctl enable ${component_name}
    systemctl start ${component_name}
}