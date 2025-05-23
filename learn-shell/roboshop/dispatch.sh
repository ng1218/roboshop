source common.sh
component_name=dispatch

golang

cp ${pwd}/dispatch.repo /etc/yum.repos.d/dispatch.repo
systemd_setup