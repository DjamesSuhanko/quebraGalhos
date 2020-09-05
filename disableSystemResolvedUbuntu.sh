#!/bin/bash
sudo systemctl disable systemd-resolved
sudo systemctl stop systemd-resolved

head -n2 /etc/NetworkManager/NetworkManager.conf >/tmp/nm
echo "dns=default" >>/tmp/nm

tail -n +3 /etc/NetworkManager/NetworkManager.conf >>/tmp/nm

sudo mv /tmp/nm  /etc/NetworkManager/NetworkManager.conf

sudo rm -f /etc/resolv.conf

sudo systemctl restart NetworkManager

cat /etc/resolv.conf
