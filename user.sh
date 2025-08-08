dnf module disable nodejs -y
dnf module enable nodejs:20 -y

dnf install nodejs -y

cp user.service /etc/systemd/system/user.service

useradd roboshop
rm -rf /app
mkdir /app

cd /app
npm install

systemctl daemon-reload
systemctl enable user
systemctl restart user
