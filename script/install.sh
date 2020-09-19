#!/bin/bash

mkdir -p ~/etc/systemd/system/wdazou.service

echo -e "[Service]\nExecStart=/home/$USERS/creat_user.sh\nRestart=always\nWorkingDirectory=/home/$USERS\n" > ~/etc/systemd/system/wdazou.service
echo -e "[Unit]\nDescription=Mon createur d'utilisateur\nAfter=network.target" >> ~/etc/systemd/system/wdazou.service
echo -e " [Install]\nWantedBy=multi-user.target" >> ~/etc/systemd/system/wdazou.service

sudo systemctl enable wdazou
sudo systemctl daemon-reload
sudo systemctl start wdazou
