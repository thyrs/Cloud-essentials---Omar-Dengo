Teach it as a story:

https://www.youtube.com/watch?v=gd7BXuUQ91w&ab_channel=NetworkChuck
# 60 Linux Commands you NEED to know (in 10 minutes)

https://www.youtube.com/watch?v=VbEx7B_PTOE&list=PLIhvC56v63IJIujb5cyE13oLuyORZpdkL&ab_channel=NetworkChuck
# FREE Linux course for beginners


#? "Filesystem Hierarchy Standard"

#                             ┌───┐ > root directory                         
#   ┌─────────┬─────────┬─────┤ / ├──────┬──────┬────────┐   
#   │         │         │     └─┬─┘      │      │        │   
# ┌─┴──┐   ┌──┴──┐   ┌──┴─┐  ┌──┴──┐  ┌──┴──┐ ┌─┴──┐  ┌──┴──┐
# │/etc│   │/root│   │/mnt│  │/boot│  │/home│ │/var│  │/proc│
# └────┘   └─────┘   └────┘  └─────┘  ├─────┤ └────┘  └─────┘
#                                     │     │                
#                                ┌────┴───┐ └─┬────┐         
#     > YOUR home directory  >>> │/esteban│   │/rob│        
#                                └────────┘   └────┘         
#

/ # Disk-Based, The Root File System #! interview
/etc # [e]xtended [t]ext [c]onfiguration, directory holds system configuration files. #! interview
/root # This is the default home directory location for the root user.
/boot # Linux kernel, boot support files, and boot configuration files.
/home # store user home directories and other user contents. #! interview
/opt # hold [opt]ional software that may need to be installed on the system.
/usr # (UNIX System Resources) contains most of the system files.
/var # contain log, status, spool, lock, and other [var]iable data. #!Cert
/tmp # The Temporary Directory, a repository for temporary files
/dev # used to store [dev]ice nodes for physical hardware and virtual devices.


#? Relative Path vs Absolute Path

cat Documents/newhome.txt
# Relative Path

cat /home/esteban/Documents/newhome.txt
# Absolute Path


#? Basic commands:

Command     
# description

ls 
# list directory content

ll 
# list directory content full details

pwd 
# shows the current directory path

cd / 
# "/" system root path

ls ~ 
# "~" user home directory

cd Downloads 
# change directory to the "Downloads" folder

cd .. 
# change directory to previos directory (go back)

nano newfile.txt
# create o edit text files
    ctrl + o # save
    ctrl + x # exit
    # use "/" to search, n = next result, N = previuos result

cat newfile.txt
# shows content of "newfile.txt"

mkdir Mis_cosas
# make directory "Mis_cosas"

cp Downloads/newfile.txt Mis_cosas/newfile2.txt 
# copy file: cp {source path} {destination path}        
# copy file: "newfile.txt" in the Downloads folder to the "Mis_cosas" folder with the name: "newfile2.txt"

rm newfile2.txt
# removes or deletes file

mv Downloads/newfile.txt Mis_cosas/
# mv {source path} {destination path}       
# move file: "newfile.txt" in the Downloads folder to the "Mis_cosas" folder with the name

cat Mis_cosas/newfile.txt
# shows content of "newfile.txt" inside of "Mis_cosas" folder

Tab 
# auto-complete commands

Ctrl + C
# Cancels running proccess

↑ ↓ 
# use up and down arrows to see the history





ls # list
pwd # print working directory
cd # change directory
.. # "go back on the directory"
/ # root directory
~ # "home directoy"
nano # editor de text
ctrl + X # exit
ctrl + O # save
cat # concatenate (mostrar el contenido de el archivo)