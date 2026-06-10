#!  Manage user and group accounts and related system files:

* __Objectives:__
    - Manage user/group info in password/group databases.

#? command whoami:
whoami # Display currently logged username

#? command useradd:
useradd user1 # Creates a user: "Create a new user"
useradd -m user1 # Create the user's ho[m]e directory if it does not exist #!Cert
useradd -m user1 -s /bin/bash # sets the path to the user's login [s]hell

#? command sudo:
sudo # "super user do"
sudo usermod -aG sudo user_name # Adding "super user" powers to "username"

#? command passwd:
passwd # Passwd is a tool used to change a user's password. And general password mgmt #! interview, Cert
# Usage: passwd [OPTION...] <accountName>
passwd user1
sudo passwd root # change root password

#? command su:
# Usage: su [options] [-] [<user> [<argument>...]]
#! ---ALERT--- when you Switch to other user by default you stay in the same directory(it doesnt change directories)
su user1 # Switch User to "user1" #! interview

exit # go back to the previous session



#! Manage file permissions and ownership :

| letter | meaning | # value | Directory | file     | 
| ------ | ------- | ------- | --------- | -------- |
| r      | read    | 4       | ls        | cat, cp  |
| w      | write   | 2       | rm, touch | nano, vi |
| x      | execute | 1       | cd        | sh, ./   |


#? "ls -l" command:
ls -l # shows detailed information about files and directories, including permissions #! CERT

| file | user | group | other | links | onwer | group | size | modification | name      |
| ---- | ---- | ----- | ----- | ----- | ----- | ----- | ---- | ------------ | --------- |
| -    | rwx  | rwx   | rwx   | 1     | rober | HRdep | 156  | dec 3 10:57  | my.txt    |
|      |      |       |       |       |       |       |      |              |           |



#? "chmod" command:

chmod # changes permissions on a file #! CERT, interview favorite
# Usage: chmod [OPTION]... FILE...
chmod +x script.sh # adds execution permissions to "script.sh"
chmod u+rwx,g-rwx,o+w filename # all permissions for [u]ser, nothing for [g]roup and all for [o]ther
chmod u=x,g=rx,o=w /path/to/file_or_directory # sets permission #! easy way =)

r=4
w=2
x=1

chmod 664 filename
# read and write permissions on user
# read and write permissions on group
# read permissions on others

chmod 707 path/to/file_or_directory
# all permissions for owner, nothing for group and all for other, with OCTAL VALUES


#? "chown" command:

chown # Change the owner and/or group, #! only one user and one group is allow per file/dir !CERT
# Usage: chown [OPTION]... [OWNER][:[GROUP]] FILE...
chown user01 /path/to/file_or_directory # Change the owner user of a file/directory to "user01"
chown root:root /path/to/file_or_directory # changes both: user and group to "root"
chown :group /path/to/file_or_directory # changes group only
chown user:same_group /path/to/file_or_directory # changes user only

