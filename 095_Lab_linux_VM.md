# 095_Lab_linux_VM

https://cloudwebschool.com/docs/gcp/compute/creating-your-first-vm/

### Common beginner mistakes
> Not enabling the Compute Engine API first. Attempting to create a VM without enabling the API returns a confusing permission error. Run gcloud services enable compute.googleapis.com before any other compute command.

> No billing account linked to the project. Compute Engine refuses to provision VMs in a project without billing enabled, even during a free trial. Confirm your billing setup at Billing before starting.

* create a linux VM (ubuntu LTS), make sure it is not the lasted version of ubuntu
* make sure it gets deleted automaticly within 2 hours
* create a new user and assing a password
* change the ssh config so u can login with user and password

* send SS showing how to login from cmd and type the command "hostnamectl"


```sh
#!/bin/bash
sudo useradd -m esteban -s /bin/bash
echo "esteban:estebanpass" | sudo chpasswd

sudo sed -i 's/ no/ yes/' /etc/ssh/sshd_config.d/60-cloudimg-settings.conf # needed just for some cloud VMs
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config # change PasswordAuthentication setting
sudo systemctl restart sshd # restart ssh service #! Do not forget
sudo service ssh restart # for some linux version you need this!
```


### ssh configuration files: 
```sh
#! cascara de BANANO "sshd_config ≠ ssh_config"

/etc/ssh/sshd_config # how this machine accepts SSH connections (server settings) 
man 5 sshd_config # this shows you the details about the ssh Server settings

/etc/ssh/ssh_config  # how this machine makes SSH connections to other machines (client defaults), usually left almost untouched
/etc/ssh/sshd_config.d/60-cloudimg-settings.conf # this is ssh config file #! for some cloud VMs
```
