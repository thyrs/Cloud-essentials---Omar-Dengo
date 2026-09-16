[← Back to Main Menu](./000README.md)

# install VM instance with virtual box [x] 20mins
### How to install Ubuntu 22.10 LTS in VirtualBox 2026:
[How to install Ubuntu 22.10 LTS in VirtualBox 2026:](./images/https://www.youtube.com/watch?v%3DhYaCCpvjsEY)

```
https://www.youtube.com/watch?v%3DhYaCCpvjsEY
```

- install virtual box: https://www.virtualbox.org/wiki/Downloads
- download "tinycore" Linux: http://www.tinycorelinux.net/downloads.html (2nd option - TinyCore 23 MB)

> **you may need to enable virtualization feature in you BIOS, also your PC's CPU may not be compatable with the image "tinycore.iso"**

1. open virtual box
1. click > NEW (new VM)
1. add name: put your name 
1. select folder for the OS ".iso"
1. select ".iso"
1. select OS settings:
1. Linux
1. other Linux
1. other Linux  32bit
1. specify virtual hardware:

* RAM > 256MB 
* CPU > 1 
* DISK > 8GB

1. click finish

### Turn on the VM:

1. right click the name of VM and click
1. Start > start with GUI
1. follow the steps to get into the OS
1. Run VM and send and screenshot with the terminal open on the screen and showing the VM name with this command:
```sh
uname -a
```

### notes:
* With "right control" > skip mouse capture
* close with "power off"