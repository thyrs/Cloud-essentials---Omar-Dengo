# WSL - Windows Subsystem for Linux

You can use WSL to run a Linux distribution on your Windows machine without the need for a virtual machine or dual-boot setup. This allows you to use Linux command-line tools and applications directly on your Windows system.
- Documentation: https://learn.microsoft.com/en-us/windows/wsl/install

> **PowerShell with admin rights:**
```powershell

wsl.exe --list --online
# To see a list of available Linux distributions available for download through the online store, enter

wsl.exe --install ubuntu
# install it again
# Replace [Distro] with the name of the distribution you would like to install. "ubuntu" or "FedoraLinux-43"

wsl --unregister ubuntu
# remove container

wsl -d ubuntu
# To launch a specific [d]istribution
```