**Week 5**
- Linux Foundation Part 2
    - Processes, Package and Passwords
    - Regular Expressions
    - Input Output Redirection in Linux and text Editor

#! Day PROCCESS & PACKAGE MANAGEMENT 

#? ps command:

ps -aux # shows processes: [a]ll, [u]ser based, without controlling ttys [x] #!CERT
ps -aux --forest # shows "process tree" also know as process hierarchy, #!Interview


#? top command:

top # shows proccess, starts top(enters in a presetantion mode) #!CERT
    q # [q]uit
    <esc> # "go back"
    k # [k]ills proccess
    t # [t]ask/cpu, filters output: Cycles between task CPU, total CPU, and memory summaries. 
    u # [u]ser, 
    h # shows [h]elp (other options)

#? kill command:

kill # kill a proccess
kill 4463 # Terminate a proccess ID: "4463" using the default SIGTERM (terminate) signal:
kill -9 process_id # Signal the operating system to immediately terminate a program (which gets no chance to capture the signal):



#! Use Debian package management:

#? apt-get command:

apt-get # full name #! CERT
apt # "Advance Package Tool" ubunto package manager, to install packages from repositories

sudo apt update # Update the list of available packages and versions 
# (it's recommended to run this before other `apt` commands) #! casacara de banano
sudo apt install cmatrix # install the "cmatrix" utility
sudo apt remove cmatrix # Remove a package (using `purge` instead also removes its configuration files)
sudo apt upgrade -y # Upgrade all installed packages to their __newest available versions__. Say [y]es to confimation

apt list # List all packages in repository
apt list --installed # List installed packages

#? systemctl command:

sudo apt update
sudo apt install apache2 # install HTTP server for linux: "apache2"

systemctl status apache2 # show status
systemctl start apache2 # start the service
systemctl enable apache2 # enable boot start (se corre cada vez que se prende la maquina)
systemctl stop apache2 # stop the service



#! Basics - text utilities, output redirection


#? cat command:

cat # shows the content of a text file, it also can be used to con[cat]enate text.
cat /path/to/file # shows the content of "file.txt"
cat file2 file3 fil4 # joins files

#? head command:

head # shows the first lines of a text file (10 default)  #! interview
head -n3 /path/to/file # head: shows the first 3 [n]umber of lines of a text file (10 default)
cat /path/to/file | head -n3 # head: shows the first 3 [n]umber of lines of a text file (10 default)


#? tail command:

tail # shows the last lines of a text file, (10 by default)  #! interview
tail /var/log/auth.log # shows the last 10 lines on the text file(system logs)
tail /etc/hosts -5 # shows the last 5 lines
cat /etc/hosts | tail -5 # shows the last 5 lines


#? less command:

less # shows the text in a "presentation" mode, #! use the same for man pages
# Usage: less [filename]...
# SEARCHING:
    /pattern # Search forward for (N-th) matching line.
    ?pattern # Search backward for (N-th) matching line.
    n # search [n]ext (for N-th occurrence).
    N # search [N]ext in reverse direction.
    q # [q]uit presentation mode #! cert
    h # [h]elp
less /path/to/file #shows file.txt as in "presentation" mode
sudo cat /var/log/dmesg | less # open "dmesg" and redirect output to less


#! Use streams, pipes and redirects
# BASH

STDIN= Standard input = 0 # information I give to "BASH"
STDOU= Standard output = 1 # information "BASH" gives me
STDERR= Standard error = 2 # Error message "BASH" gives

>  # used for Output Redirection. #!cert and interview
>> # used for Output Redirection to append.
<  # Input redirection. #? rarely used
"<<" # used for input redirection and is also known "as here document".
|  # Pipe is a Redirection to send the output of one command/program/process to another command/program/process for further processing.


#? Output redirection.

ls /path/to/directory > log.txt # sends the "Standard output(1)" to log.txt, "1" is implicit
ls /path/to/directory 1> log.txt # sends the "Standard output" to log.txt, "1" is implicit
ls /path/to/directory 2> log.txt # sends the errors to log.txt #! cert
ls /path/to/directory &> log.txt # sends "Standard output(1)" and "Standard error(2)""
ls dir1 nonexisting &> log.txt # sends "Standard output(1)" and "Standard error(2)""

#? echo
echo # Print given arguments.
echo "Hello World" # Print a text message. Note: quotes are optional
echo "Hello World" > myfile.txt # redirect "Hello World" to myfile.txt



#? REGEX (regular expresions)
#! when using regular expresions, always place the pattern within "" or ''

#? Regular Expresions:
# navigate to /etc/ and try these comands:

ls | grep '^a' # "^" = inicio de linea: muestra lo que empieze con "a" al principio de la linea #!interview
ls | grep 's$' # "$" = final de linea, muestra lo que tenga "s" al final de la linea #!interview
ls | grep 'X..' # "." = un caracter: muestra todo lo que tenga "X" seguido de 2 caracteres
ls | grep '\....' # "\" convierte siguiete caracter en un simbolo literal
ls | grep [0-9] # "[]" = rango: muestra lo que tenga un numero del 0-9
ls | grep ^[a-e,z][0-9] # "^" = inicio de linea: muestra file que empieze con letra y seguido un numero #!interview
ls | grep [^0-9][a-e,z] # "^" = simbolo de negacion: (cuando esta dentro del rango),  muestra file que NO empieze con numero y segundo caracter "a-e" o "z", 
ls | grep 's.*' # "*" = 0 o mas caracteres, muestra todo lo que tenga algo despues de la "s" 
ls | grep 'g.*p' # "*" To match zero or more any characters, use ".*"
grep -i "pattern" /path/to/file # look for "pattern" in file case [i]nsensitive #!CERT



#!  Vi - text editor 
vi mytextfile.txt # open "mytextfile.txt" with vi.

<escape> # use this to go back to the MODE "read only" and use the options after ":"

# Command mode: "presentation mode"
:q      # quit
:q!     # quit without saving changes, force quit
:w      # write file (save)
:wq     # write file and quit


     Λ
     k
 < h   l >    # basic motion
     j
     V

i       # INSERT MODE: enter "edit mode"    
gg      # go to first line in file
G       # go to end of file #! interview
dd      # deletes the line
u       # undo
U       # redo
ctrl+R  # redo
o       # create a new line under the cursor
a       # append after the cursor
v       # use "v" to select the line
d       # [cut] the line or text selected
y       # yank (copy) the text selected
yy      # yank (copy) a line
p       # [paste] the text selected
ZZ      # Exits the editor, saving the changes
/search_pattern<Enter> # Search for a pattern in the file (press `n`/`N` to go to next/previous match):
?search_pattern<Enter> # Search backward for pattern
:%s/regular_expression/replacement/g<Enter> # Perform a regular expression substitution in the whole file
:set nu<Enter> # Display the line numbers

