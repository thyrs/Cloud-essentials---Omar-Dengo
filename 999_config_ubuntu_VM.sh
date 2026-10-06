#!/bin/bash
# this is an simple script for 10 users and ssh user and password access
useradd -m user01 -s /bin/bash
useradd -m user02 -s /bin/bash
useradd -m user03 -s /bin/bash
useradd -m user04 -s /bin/bash
useradd -m user05 -s /bin/bash
useradd -m user06 -s /bin/bash
useradd -m user07 -s /bin/bash
useradd -m user08 -s /bin/bash
useradd -m user09 -s /bin/bash
useradd -m user10 -s /bin/bash

echo "user01:user01pass" | sudo chpasswd
echo "user02:user02pass" | sudo chpasswd
echo "user03:user03pass" | sudo chpasswd
echo "user04:user04pass" | sudo chpasswd
echo "user05:user05pass" | sudo chpasswd
echo "user06:user06pass" | sudo chpasswd
echo "user07:user07pass" | sudo chpasswd
echo "user08:user08pass" | sudo chpasswd
echo "user09:user09pass" | sudo chpasswd
echo "user10:user10pass" | sudo chpasswd

usermod -aG sudo user01
usermod -aG sudo user02
usermod -aG sudo user03
usermod -aG sudo user04
usermod -aG sudo user05
usermod -aG sudo user06
usermod -aG sudo user07
usermod -aG sudo user08
usermod -aG sudo user09
usermod -aG sudo user10

sudo sed -i 's/ no/ yes/' /etc/ssh/sshd_config.d/60-cloudimg-settings.conf
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config # change PasswordAuthentication setting
sudo systemctl restart sshd # restart ssh service #! Do not forget
sudo service ssh restart # for some linux version you need this!