# WSL - Windows Subsystem for Linux

* You can use WSL to run a Linux distribution on your Windows machine without the need for a virtual machine or dual-boot setup. This allows you to use Linux command-line tools and applications directly on your Windows system.
- Documentation: https://learn.microsoft.com/en-us/windows/wsl/install

1. Look on the windows menu for "PowerShell" click on the option "open with admin rights" (regular PowerShell wont work for this)

2. In there you cant try the following commands:
```powershell

wsl.exe --list --online
# To see a list of available Linux distributions available for download through the online store, enter

wsl.exe --install ubuntu
# install wsl (ubuntu container)
# Replace [Distro] with the name of the distribution you would like to install. "ubuntu" or "FedoraLinux-43"
# it may take a while and you may need to restart the PC or enable "Virtualization" in the BIOS menu

wsl --unregister ubuntu
# remove container (use this in case you forgot your password and need to start again)

wsl -d ubuntu
# To launch a specific [d]istribution
```

- Send an SS after getting into the container and show the output of the command:
```sh
hostnamectl
```