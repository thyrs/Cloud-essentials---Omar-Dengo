# Installing Packages

* step by step is at the end of this file, in case u dont remember all the commands
* we recommend to create a Virtual linux machine for this labs. Use the guide in the [027](027_Lab_Amazon_Lightsail.md), and use the same VM 

```sh
#? Step 1
# how to use the package manager on amazon linux distributions
# navigate to your home directory, verfy with pwd
# refresh the list of available packages using the "yum" command:

#? Step 2
# Installing Packages: you can proceed to install the package "cowsay"
# test the newly installed package:
cowsay your_name_here # Send an SS of this command output

#? Step 3
# Updating Packages
# upgrade all available dependencies to be updated.

#? Step 4
# Remove the package "cowsay" from the system.


# step by step is at the end of this file, in case u dont remember all the commands


















#? Step 1
# navigate to your home directory, verfy with pwd
### Let's cover up, how to use the package manager on Debian-based distributions
# Before installing a package, it is good practice to use the refresh the list of available packages 
# using the "yum update" command:
sudo yum update


#? Step 2
# Installing Packages
# Once you've have update the repository, you can proceed to install the package with the yum install command:
sudo yum install cowsay
cowsay your_name_here # Send an SS of this command output


#? Step 3
sudo yum update
sudo yum upgrade
# Updating Packages
# The yum install command can also update a package, if that package is installed and a newer version is available. If the package is not already on the system, it would be installed; if it is on the system, it would be updated.
# Updating all packages of the system should be done in two steps. First, update the cache of all packages available with yum update. Second, execute the yum upgrade command and all packages and dependencies will be updated.

#? Step 4
sudo yum remove cowsay 
sudo yum purge cowsay
# Removing Packages
# The yum command is able to either remove or purge a package. The difference between the two is that purging deletes all package files, while removing deletes all but the configuration files for the package.
# An administrator can execute the yum remove command to remove a package or the yum purge command to purge a package completely from the system.
```

