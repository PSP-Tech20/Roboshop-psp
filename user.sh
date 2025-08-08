component=user
source common.sh

dnf module disable nodejs -y
dnf module enable nodejs:20 -y

dnf install nodejs -y

service_setup

useradd roboshop

rm -rf /app
mkdir /app

curl -L -o /tmp/user.zip https://roboshop-artifacts.s3.amazonaws.com/user-v3.zip
cd /app
unzip /tmp/user.zip

cd /app
npm install

systemctl_setup
