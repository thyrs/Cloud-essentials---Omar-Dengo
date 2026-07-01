

# Lab 2-01: Configuration of Windows Virtual Machine in Azure using RDP
Scenario: An organization wants to find a solution to process the data stored in the same format from different applications built on a virtual machine.

Solution: The organization can use the Windows virtual machine and store the incoming data in the same format through the Azure function. This lab is divided into two sections:

### 1. Create and configure a virtual machine in Azure
### 2. Connect Windows Azure virtual machine using Remote Desktop Protocol (RDP)
---
1. Log in to the Microsoft Azure portal and go to the portal menu.
1. Go to the main menu, and click on “Create a resource.”
1. Type “Windows Server” in the search box and click “Enter.”
1. Click on “Select a software plan,” and find “[smalldisk] Windows Server 2019 Data center” from the list. Note: You can also use other Windows Server versions to create a virtual machine.
1. Click on “Create.”
1. After that, configure the virtual machine settings.
1. Choose an available resource group.
1. Name the virtual machine “dateyournameVM” (example: 20mayestebanVM)
1. Select the VM image of the same Windows Server version. Note: The size of the VM will be Standard DS1 v2. (choose the cheapest one)
1. Fill in the “Administrator account” details. Note: Use “yourname” as a “Username.”
1. Select “RDP (3389)” as an inbound port rule.
1. Click on “Next : Disk >.”
1. Choose “Premium SSD” as an OS disk type.
1. Click on “Next: Networking >.” 
1. Configure a new Virtual Network (VNet).
1. Click on “Create new.”
1. Set name as “whatever you want”
1. Give the default address space 
1. Add a public IP
1. Click on “OK.”
1. On "NIC network security group:" click "advanced" to create a new NSG (network security group)
1. click on "Delete public IP and NIC when VM is deleted"
1. Click on “Next : Management >”.
1. Click on “Next : monitoring >”.
1. Click on “Next : Advanced >”.
1. Click on “Next : Tags >”.
1. When the validation is passed, click on “Create.”
1. When all the deployment is done, click on “Go to resource.”
1. click on Connect > Connect > check inbound NSG rules botton (make your its accessible)
1. The configured Windows virtual machine is shown.

### 2. Connect Windows Azure virtual machine using Remote Desktop Protocol (RDP)
### From your PC:
1. Search “Remote Desktop Connection” from the start menu.
1. Enter the VM Public IP address and username.
1. Enable “Allow me to save credentials.”
1. show the network info with "ipconfig /all" in the cmd
1. send ScreenShot
> **Resources should be deleted after being used by the customer from the Azure portal. Otherwise, the customer will be highly charged according to the subscription criteria.**
