systemctl_setup() {
 systemctl daemon-reload
 systemctl enable $(component)
 systemctl restart $(component)
}

service_setup() {
  cp $(component).service /etc/systemd/system/$(component).service
}

conf_setup() {
  cp $(component).conf /etc/$(component)/$(component).conf
}

repo_setup() {
  cp $(component).repo /etc/yum.repos.d/$(component).repo
}