

# Lab: processes
* step by step is at the end of this file, in case u dont remember all the commands


```sh
# navigate to your home directory, verfy with pwd
# 1 - create new user  with your last name, make sure it has its own home directory
# 2 - create a password for the new user:
# 3 - login with ssh on a new terminal using new user's info
# 5 - kill the process 
# 6 - send SS with the session being terminated and the last command
```






















## solutions:

```sh

#? Lab: processes

# navigate to your home directory, verfy with pwd
cd ~
pwd
# 1 - create new user  with your last name, make sure it has its own home directory
sudo useradd -m lastname -s /bin/bash 
# 2 - create a password for the new user:
sudo passwd lastname
# 3 - login with ssh on a new terminal using new user's info
# 4 - look for the process (bash session) in the first terminal
ps -aux
# 5 - kill the process 
sudo kill -9 XXXX # "XXXX" should be the process id number you found on step 4
# 6 - send SS with the session being terminated and the last command

```
**send SS with the session being terminated and the last command**