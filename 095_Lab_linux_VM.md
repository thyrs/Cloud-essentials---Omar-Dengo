# 095_Lab_linux_VM

https://cloudwebschool.com/docs/gcp/compute/creating-your-first-vm/

### Common beginner mistakes
> Not enabling the Compute Engine API first. Attempting to create a VM without enabling the API returns a confusing permission error. Run gcloud services enable compute.googleapis.com before any other compute command.

> No billing account linked to the project. Compute Engine refuses to provision VMs in a project without billing enabled, even during a free trial. Confirm your billing setup at Billing before starting.

1. look for the "compute Engine" option in the menu or the searchbar
1. (you will need to have a proyect or create a new one)
1. click on "create instance"
1. add there general info: name, region...
1. on the machine type choose the cheaper one: E2 - low cost, day-to-today computing
1. select the smallest one: e2-micro (2 vCPU, 1 core, 1 GB memory)
1. option: on Provisioning model you can choose: spot and you will get a disccount for using Gcloud spare resources
1. check the box for: Set a time limit for the VM, and set it to 3 hours
1. on "on VM termination" make your u select: "DELETE" (this will delete your VM within 3 hours in case you forget to do it)

1. go to the **next tab**: OS and Storage:
1. change OS and select: Ubuntu, Ubuntu 24.04 LTS Minimal x86/64 (always try to use a "LTS" long time support version and dont use the newest version)
1. use a size of 30GB for the disk

1. go to the **next tab**: networking:
1. make sure you allow: http and https

1. go to the **next tab**: Advance:
1. under "Automation" you can add user data like this: add your user and password

```sh
#!/bin/bash
sudo useradd -m esteban -s /bin/bash
echo "esteban:estebanpass" | sudo chpasswd
```

1. Create the VM

### Connect to the VM:

1. once it is created click on connect: ssh
1. accept the ssh keys and u should see the linux terminal
1. once on the CLI you can change some setting so u can login with username and password:

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
