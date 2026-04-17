#!/bin/bash

set -e -x

source install-common.sh

mkdir -p $INSTALL_DIR
cp -u src/vhob-common.sh $INSTALL_DIR
cp -u src/vhob-host-service $INSTALL_DIR

mkdir -p $SYSTEMD_DIR
cat vhob-host.service.in | configure INSTALL_DIR "$INSTALL_DIR" > $SYSTEMD_DIR/vhob-host.service

systemctl enable --user vhob-host.service
systemctl start --user vhob-host.service