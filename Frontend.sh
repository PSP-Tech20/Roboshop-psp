source common.sh

dnf module list nginx

Print_head nginx current version ni disable and kotha version ni enable chestundi
dnf module disable nginx -y
dnf module enable nginx:1.24 -y

Print_head kotha version install chestundi
dnf install nginx -y

Print_head conf setup chestundi
cp nginx.conf /etc/nginx/nginx.conf

Print_head start and enable nginx
systemctl enable nginx
systemctl start nginx

Print_head removing old content
rm -rf /usr/share/nginx/html/*

Print_head importing developer file
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend-v3.zip

Print_head unzipping
cd /usr/share/nginx/html
unzip /tmp/frontend.zip

Print_head restarting nginx
systemctl restart nginx