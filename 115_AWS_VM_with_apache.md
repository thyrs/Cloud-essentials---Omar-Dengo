# AWS_VM_with_apache

### Create a simple AWS VM with Amazon Linux 2023 and install a web server:
1. Go to the menu and find the "EC2"
1. click on launch instance > "Launch without a walkthrough"
1. add a name: your_name_todays_date
1. select the OS Images: Amazon Linux 2023 (kernel-6.1) 
1. Architecture: 64-bit (86x)
    - (please note that you need to use "yum" instead of "apt" to install things on this linux OS)
1. Instance type: t2.nano
1. Create a Key pair (login) - (mandatory)
    - use RSA and .pem, you can use any name you want, make sure save it, otherwise you wont be able to access the VM
1. under "Network settings", you can click on "edit" and make your the VM will have a "Auto-assign public IP" 
    - Also create a Firewall (security groups) and make sure the ports 22,80,443 and 3389 are open in the Firewall, click on "Add security group rule" if needed
1. Under "Storage" use a disk of 10GB
1. Under "Advance Options"
    - You can select "Spot instances" under "Purchasing option", so you get a disccount using AWS spare resorces 
    - also under the "user data - option" you can add aditional config you want the VM to start with, something like this:

```sh
#!/bin/bash
sudo useradd -m esteban -s /bin/bash
echo "esteban:estebanpass" | sudo chpasswd
sudo usermod -aG sudo esteban # [a]dding "username" to the [G]roup of sudoers
```

- Click on Launch instance
- Open the resource
- click on "Connect", you will see the SSH info, copy the command: (your info may be diferent)
- **when you paste the command on the CMD make sure you are in the same directory your SSH key is located**
```sh
ssh -i "julio22.pem" ec2-user@ec2-44-202-239-143.compute-1.amazonaws.com
# [i]dentify yourself with the SSH key named: "julio22.pem", logging with the user: ec2-user
```
### when you are in the linux CLI you can change the ssh authentication with something like this:

```sh
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config # change PasswordAuthentication setting
sudo systemctl restart sshd # restart ssh service #! Do not forget
sudo service ssh restart # for some linux version you need this!
```

## Install apache web server: 
> (https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Tutorials.WebServerDB.CreateWebServer.html)
```sh
sudo yum update -y # update repo, say [y]es to confirmation question
sudo yum install -y httpd # the name of the installation package is diferent but its still apache
sudo systemctl status httpd
sudo systemctl enable httpd
sudo systemctl start httpd

# open http://_you_VM_ip_or_domainname_ in your web browser and you should see the apache welcome page, please note you are using port 80 with HTTP, 

# Now you can modify the .html file on /var/www/html, create a file with your personalized website:

cd /var/www/html # move to the webserver page location
sudo nano index.html # create the file will contain you website
'''
<h1> hello its me Esteban
# you may paste your html code here
'''

sudo systemctl restart httpd # restart webserver

# refresh http://_you_VM_ip_or_domainname_ in your web browser and you should see your page, please note you are using port 80 with HTTP and NOT the regualar 443 with HTTPS
``` 
- Send SS with your personalized website and showing the URL.