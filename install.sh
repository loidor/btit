#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run me as root."
  exit
fi

cp btit.sh /usr/local/bin/btit
cp btit.service /etc/systemd/system/btit.service

systemctl daemon-reload
systemctl enable btit
systemctl start btit

echo "Bluetooth Inactivity Timer is now installed and ready to kill your Bluetooth whenever you're not using it."
echo
echo "Use 'systemctl stop btit' to disable it whenever you want to."
