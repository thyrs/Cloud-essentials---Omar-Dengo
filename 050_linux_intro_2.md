* **Week 5**
- Linux Foundation Part 2
    - Processes, Package and Passwords
    - Regular Expressions
    - Input Output Redirection in Linux and text Editor


# Processes, Package and Passwords

Processes, Package and Passwords
By Foundever Costa Rica
Foundever Costa Rica

## What is a Process?

A process refers to a program in execution; it’s a running instance of a program. It is made up of the program instruction, data read from files, other programs or input from a system user.

There are fundamentally two types of processes in Linux:

Foreground processes (also referred to as interactive processes) – these are initialized and controlled through a terminal session. In other words, there has to be a user connected to the system to start such processes; they haven’t started automatically as part of the system functions/services.
Background processes (also referred to as non-interactive/automatic processes) – are processes not connected to a terminal; they don’t expect any user input.


### How Does Linux Identify Processes?

Because Linux is a multi-user system, meaning different users can be running various programs on the system, each running instance of a program must be identified uniquely by the kernel.

And a program is identified by its process ID (PID) as well as it’s parent processes ID (PPID), therefore processes can further be categorized into:

* Parent processes – these are processes that create other processes during run-time.
* Child processes – these processes are created by other processes during run-time.


During execution, a process changes from one state to another depending on its environment/circumstances. In Linux


The process states are Running, Waiting, Stopped, Zombie

### Viewing Processes

In the Linux operating system, processes are executed with the privileges of the user who executes the command. This allows for processes to be limited to certain capabilities based upon the user identity.

Although there are exceptions, generally the operating system will differentiate users based upon whether they are the administrator. Typically regular users, like the sysadmin user, cannot control another user's processes. Users who have administrative privileges, like the root account, can control any user processes, including stopping any user process.

The ps command can be used to list processes.

ps  [options]

The ps command will display the processes that are running in the current terminal by default. In the example above, the bottom line is the process created by the execution of the ps command. The output includes the following columns of information:


- PID: The process identifier, which is unique to the process. This information is useful for controlling the process by its ID number.
- TTY: The name of the terminal where the process is running. This information is useful for distinguishing between different processes that have the same name.
- TIME: The total amount of processor time used by the process. Typically, this information isn't used by regular users.
- CMD: The command that started the process.

# Package Management

A package manager is a collection of software tools that automate the process of installing, upgrading, configuring, and removing software. A package manager maintains a database of information about installed packages (called the package database) that enables the package manager to uninstall software, establish whether a new package’s dependencies have been met, and determine whether a package you’re trying to install has already been installed.

Here is a list of the major functions of a packet manager:

* Verifying file checksums to ensure the validity of the installed software.
* Verifying digital signatures to authenticate the origin of packages.
* Upgrading software with latest versions.
* Managing dependencies to ensure a package is installed with all packages it requires.
* Creating binary packages.

Two major versions of package management tools exist:

* RPM Package Manager (RPM)
* Debian package manager


### Let's cover up, how to use the package manager on Debian-based distributions

Installing Packages

Package files are commonly installed by downloading them directly from repositories located on Internet servers. The Debian repositories contain more than 65,000 different packages of software. Before installing a package, it is good practice to use the refresh the list of available packages using the apt-get update command.

**Step 2**
Installing Packages
Once you've have update the repository, you can proceed to install the package with the apt-get install command:
**Step 3**
Updating Packages
The apt-get install command can also update a package, if that package is installed and a newer version is available. If the package is not already on the system, it would be installed; if it is on the system, it would be updated.
Updating all packages of the system should be done in two steps. First, update the cache of all packages available with apt-get update. Second, execute the apt-get upgrade command and all packages and dependencies will be updated.
**Step 4**
Removing Packages
The apt-get command is able to either remove or purge a package. The difference between the two is that purging deletes all package files, while removing deletes all but the configuration files for the package.
An administrator can execute the apt-get remove command to remove a package or the apt-get purge command to purge a package completely from the system.


----



# Regular Expressions
By Foundever Costa Rica
Foundever Costa Rica


## What are Linux Regular Expressions?

Linux Regular Expressions are special characters which help search data and matching complex patterns. Regular expressions are shortened as 'regexp' or 'regex'. They are used in many Linux programs like grep, bash, rename, sed, etc.

For ease of understanding let us learn the different types of Regex one by one.


**Basic Regular Expressions**
Most commands that use regular expressions can interpret basic regular expressions.


**Extended Regular Expressions**
Extended regular expressions are not available for all commands and a command option is typically required for them to work correctly.



In the following section, you will be presented with a game, similar to sudoku, but this involves the use of regex to solve it.

Ready to play?

*Regular Expressions GAME*


# Input Output Redirection in Linux and text Editor
By Foundever Costa Rica
Foundever Costa Rica


Input Output Redirection in Linux

Adding content to files in Linux can be done in a variety of ways. Linux has a few text editors that can be used to add content to a file. However, this method requires some familiarity with Linux text editor commands.

There is a way in Linux to quickly add content to a file using a command-line feature called input/output (I/O) redirection. I/O redirection allows for information in the command line to be sent to files, devices, and other commands. The input or output of a command is redirected from its default destination to a different location. I/O redirection is like a series of train tracks, where a switch can be enabled to direct the output of a command on a different track so it goes somewhere else in the shell. In this section, we are writing to files by redirecting the output of a command to a file.

When it comes to command input and output there are three paths, or “tracks”. These paths are called file descriptors. 

- 1 The first file descriptor is standard input, abbreviated as STDIN. Standard input is the information the command receives and processes when it is executed, essentially what a user types on the keyboard.  

- 2 The second file descriptor is standard output, abbreviated as STDOUT. Standard output is the information that the command displays, the output of the command.

- 3 The last file descriptor is standard error, abbreviated as STDERR. STDERR, are the error messages generated by commands that are not correctly executed.

HakTip - Linux Terminal 101 - I/O Redirection of Standard Outputs

[HakTip - Linux Terminal 101 - I/O Redirection of Standard Outputs](./images/https://www.youtube.com/watch?v%3Dy_UbStpJHpI)
```sh
STDIN= Standard input = 0 # information I give to "BASH"
STDOU= Standard output = 1 # information "BASH" gives me
STDERR= Standard error = 2 # Error message "BASH" gives

>  # used for Output Redirection. #!cert and interview
>> # used for Output Redirection to append.
<  # Input redirection. #? rarely used
"<<" # used for input redirection and is also known "as here document".
|  # Pipe is a Redirection to send the output of one command/program/process to another command/program/process for further processing.
```


## Text editor

The premier text editor for Linux and UNIX is a program called vi. While there are numerous editors available for Linux that range from the tiny editor nano to the massive emacs editor, there are several advantages to the vi editor:

* The vi editor is available on every Linux distribution in the world. This is not true of any other editor.
* The vi editor can be executed both in a CLI (command line interface) and a GUI (graphical user interface)
* While new features have been added to the vi editor, the core functions have been around for decades. This means that if someone learned the vi editor in the 1970s, they could use a modern version without any problem.While that seems trivial, it may not seem so trivial twenty years from now.

In reality, most Linux systems don't include the original vi, but an improved version of it known as vim, for vi improved. This fact may be hidden by most Linux distributions. For the most part, vim works just like vi, but has additional features. For the topics that will be covered in this course, either vi or vim will work.

There are three modes used in vi: **command** mode, **insert** mode, and **ex** mode. 

**VM GAME**


