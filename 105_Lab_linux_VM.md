# 105_Lab_linux_VM_template


### create a instance template in Gcloud with this info:

1. look for the "compute Engine" option in the menu or the searchbar, clink on "instance Templates"
1. (you will need to have a proyect or create a new one)
1. click on "create instance templates"
1. add there general info: name, region...
1. on the machine type choose the cheaper one: E2 - low cost, day-to-today computing
1. select the smallest one: e2-small
1. option: on Provisioning model you can choose: spot and you will get a disccount for using Gcloud spare resources
1. check the box for: Set a time limit for the VM, and set it to 4 hours
1. on "on VM termination" make your u select: "DELETE" (this will delete your VM within 4 hours in case you forget to do it)

1. go to the **next**: OS and Storage:
1. change OS and select: Ubuntu, Ubuntu 24.04 LTS Minimal x86/64 (always try to use a "LTS" long time support version and dont use the newest version)
1. use a size of 30GB for the disk

1. go to the **next**: networking:
1. make sure you allow: http and https

1. go to the **next**: Advance:
1. under "Automation" you can add user data like this: add your user and password

```sh
#!/bin/bash
sudo useradd -m esteban -s /bin/bash
echo "esteban:estebanpass" | sudo chpasswd
#
sudo sed -i 's/ no/ yes/' /etc/ssh/sshd_config.d/60-cloudimg-settings.conf # needed just for some cloud VMs
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config # change PasswordAuthentication setting
sudo systemctl restart sshd # restart ssh service #! Do not forget
sudo service ssh restart # for some linux version you need this!
```

1. Create the template, then go to the template you created and deploy and instance of that template, click on "create VM" > create

### Connect to the VM:

1. open CMD login with username and password

## send SS with the template info:
