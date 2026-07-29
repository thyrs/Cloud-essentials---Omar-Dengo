
# LAB_RDS

We will deploy a wordpress website hosting its relational database in AWS RDS

### Step 1 - create Security Groups
* Enable RDS and EC2 to communicate.
    1. Go to Security Groups
    2. Create security group, Name rds-launch-wizard, Description RDS, Create Security group
    3. Edit Rules
    4. Add rule MySQL/Aurora, Source 0.0.0.0/0, security group > Save
    5. also add rules for ssh, http and https

### Step 2 - Create database

1. How to provision an RDS instance
    - Go to RDS under databases > Create database > full configuration > change the following settings:
    - Engine MySQL > Templates "Sandbox" > Version 5.7.44 (you need to check: Enable RDS Extended Support box)
2. Settings
    - DB instance identifier: techcad
    - Master username: techcad
    - Master password: techcad!23
3. Additional configuration
    - Initial database name: techcad
    - Backup retention 0 days
    - Make sure the security group we created earlier is chosen instead of the "default" group.
4. Create database


### Step 3 Provision a EC2 instance

- Choose AMI > Amazon Linux AMI(never use the lastest version) 
- Instance type T2 Micro 

* Configure Instance Details.
* Add tags > Name WordPressVM >  
* Configure Security Group > Select existing  
* Add storage > File systems: none 

* Add the following boot script without the information in brackets:
```sh
#!/bin/bash
yum update
yum install httpd php php-mysqlnd -y 
cd /var/www/html
wget https://wordpress.org/wordpress-6.9.tar.gz
tar -xzf wordpress-6.9.tar.gz
cp -r wordpress/* /var/www/html/
rm -rf wordpress
rm -rf wordpress-6.9.tar.gz
chmod -R 755 wp-content
chown -R apache:apache wp-content
service httpd start
chkconfig httpd on
```
* Review and Launch > Launch > Use existing KeyPair > Launch Instance

### Step 4 - How to configure WordPress
- Copy our EC2 instance public IP and browse into it > Click on Lets go
- http://54.90.213.129/ (something like this)
- Fill in the required information:
    - Database Name: mysql
    - Username: techcad
    - Password: techcad!23
    - Database Host: (go back to RDS and copy/paste here our database ENDPOINT)
    - (find details under "Connectivity & security" > Endpoints)
- Submit

 

- Copy the contents of next window into your clipboard
- Go to the terminal and SSH into your EC2 instance, once in type the following commands
 
```sh
sudo su
clear
cd /var/www/html
vi wp-config.php
(paste the contents of the WordPress Window and save the file)
```

Go back to the WordPress configurator in the browser > Run the installation

* Site Title: Hola techcad
* Username: techcad
* Password: techcad
* Enter your email address
* Install WordPress

> **Send SS of the successfull massage at the end**

---

### Optional Labs



#### How to enable Multi-AZ for disaster recovery
Click on the database name > Modify
Set Multi AZ to Yes > Continue
Scheduling modifications
Apply immediately > Modify DB Instance
Click on Databases
Check the status and wait until is available again


#### How to force failover and change from one AZ to another
Click on the DB name
Actions > Reboot, enable Reboot with Failover > Cancel


#### How to enable and create Read Replicas
Click on Modify
Go to Back up > Backup retention period 35 days > Continue
Scheduling of Modifications >  Apply immediately > Modify DB instance
Select the DB instance > Actions > Create Read Replica
Change Region to one of your choice
DB Instance identifier techcadreadreplica > Create read replica
Notice the Roles and wait until the read replica is available
Once available, select the read replica > Actions
Notice we can Promote, allowing us to promote a read replica into a primary DB, and then we can add read replicas to it
Delete our Read Replica
Select > Actions Delete, type delete me

> From https://aws.amazon.com/rds/ 