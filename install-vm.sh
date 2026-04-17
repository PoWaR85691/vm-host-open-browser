#!/bin/bash

set -e -x

source install-common.sh

mkdir -p $INSTALL_DIR
cp -u src/vhob-common.sh $INSTALL_DIR
cp -u src/vhob-vm-service $INSTALL_DIR
cp -u src/vhob-open $INSTALL_DIR

mkdir -p $SYSTEMD_DIR
cat vhob-vm.service.in | configure INSTALL_DIR "$INSTALL_DIR" > $SYSTEMD_DIR/vhob-vm.service

systemctl enable --user vhob-vm.service
systemctl start --user vhob-vm.service

mkdir -p $APP_DIR
cat vhob-open.desktop.in | configure INSTALL_DIR "$INSTALL_DIR" > $APP_DIR/vhob-open.desktop

xdg-settings set default-web-browser vhob-open.desktop