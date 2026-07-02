
# Lab - Creating a Virtual Network Connection
Scenario: An organization wants to deploy a secure network in Azure Cloud
for its application. How can this be done?
Solution: Using the VNet and VM, you can deploy your application in a
secure network.
01. Log in to the Microsoft Azure portal and go to the portal menu.
02. Now click on “Virtual networks” from the portal menu.
03. Click on “Create” for the creation of a virtual network.
04. Once the virtual network window appears, write the name of VNet and address space.
05. Now, click on “Create new” and write the name of the resource group.
06. Write the range of IP addresses that are in a group. (use the 192.168.97.0/24 network)
07. Leave the remaining options as it is, and click on “Create.”
08. Your VNet will now be created; click on “Refresh” to see the created VNet.
09. After creating the VNet, switch back to the portal menu and add another resource to this VNet.
10. To add a virtual machine to VNet, click “Virtual machines.”
11. A virtual machine window will appear; click on “Add” to create a virtual machine for VNet.
12. Write the name of the resource group for which the virtual machine will be created.
13. Now, add a name for the virtual machine.
14. Choose the window machine from the “Image” option. (use ubuntu 24 LTS)
15. Add Username and Password.
16. Leave the remaining options as it is. Click on “Next : Disks >”.
17. After that, click “Next: Disks >,” and the disk tab will open.
18. Click “Next: Networking >” to move to the networking tab.
19. A virtual network and subnet have already been selected. This means a virtual machine is created within “Ipsvnet.”
20. Leave the remaining options as default.
21. Click on “Review + create.”
22. It will take some time to check the validity of entered properties.
23. Once the validation is passed, click on “Create” to create the virtual machine.
24. Once the virtual machine deployment is done, click on “Go to resource”
to check and see the properties of a virtual machine.
25. The virtual network and subnet are the same as those configured before.
26. Properties of a virtual machine show that a virtual machine is created within “Ipsvnet.”
Similarly, other Azure resources may also be added within the same network.

27. ssh into the new VM and runn the command(take Screen shot):

- *you may need to go to your NSG(network security group) > settings > Network interfaces > associate > select your VM interface > OK*

```sh
# open your cmd and type something like this:

ssh azureuser@<your_VMs_public_IP_address>

ip addr # this will show you the ip address within the 192.168.97.0/25 network
```
**Resources should be deleted after being used by the customer from the Azure portal. Otherwise, the customer will be highly charged according to the subscription criteria.**
