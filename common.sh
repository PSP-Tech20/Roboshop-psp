systemctl_setup() {
 systemctl daemon-reload
 systemctl enable $(component)
 systemctl restart $(component)
}

service_setup() {
  cp $(component).service /etc/systemd/system/$(component).service
}


repo_setup() {
  cp $(component).repo /etc/yum.repos.d/$(component).repo
}

print_head () {
  echo -e "\e[36m$*\e[0m"
  echo "########################################"
  echo -e "\e[36m$*\e[0m"
  echo "########################################"
}