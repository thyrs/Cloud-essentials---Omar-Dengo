
## 2.5.2 Linux Roles and File Permissions
```sh
[analyst@secOps ~]$ ll space.txt

-rwxrw-r-- 1 analyst staff 253 May 20 12:49 space.txt
```
<!-- use "Alt + Z" to see the table correctly: -->

| file type      | user   | group   | other     | # Hard links | onwer   | group | size | modification | name      |
| -------------- | ------ | ------- | --------- | ------------ | ------- | ----- | ---- | ------------ | --------- |
| d Directory    | rw-    | rw-     | r--       | 1            | analyst | staff | 253  | May 20 12:49 | space.txt |
| - Regular file | r=Read | w=Write | x=Execute |              |         |       |      |              |           |
|                |        |         |           |              |         |       |      |              |           |


## 2.7.1 Installing and Running Applications on a Linux Host

* Linux Package repository and Libraries

```sh
sudo apt update
# searches for system updates

sudo apt upgrade
# searches for system upgrade

sudo apt install cowsay
# install cowsay app in linux
```

## 2.7.6 Piping Commands (grep)

- You can use "| grep <keyword>" to filter the output of the command:

```sh
[analyst@secOps ~]$ ll
drwxr-xr-x 2 analyst analyst    4096 Mar  22  2018 Desktop
drwxr-xr-x 3 analyst analyst    4096 April 2 14:44 Downloads
-rw-r--r-- 1 analyst analyst    9 May 20 10:51 hostfile1.txt
-rw-r--r-- 1 analyst analyst    9 May 20 10:51 hostfile2.txt
-rw-r--r-- 1 analyst analyst    9 May 20 10:52 hostfile3.txt
drwxr-xr-x 9 analyst analyst    4096 Jul 19 2018 lab.support.files
-rw-r--r-- 1 analyst analyst    19 May 20 10:53 mytest.com
-rw-r--r-- 1 analyst analyst    228844 May 20 10:54 rkhunter-1.4.6-1-any.pkg.tar.xz
drwxr-xr-x 2 analyst analyst     4096 Mar 21 2018 second_drive
-rw-r--r-- 1 analyst analyst    257 May 20 10:52 space.txt
[analyst@secOps ~]$
[analyst@secOps ~]$ ll | grep host
# list files in current directory, filter it and show only files with "host"
-rw-r--r-- 1 analyst analyst    9 May 20 10:51 hostfile1.txt
-rw-r--r-- 1 analyst analyst    9 May 20 10:51 hostfile2.txt
-rw-r--r-- 1 analyst analyst    9 May 20 10:52 hostfile3.txt
```