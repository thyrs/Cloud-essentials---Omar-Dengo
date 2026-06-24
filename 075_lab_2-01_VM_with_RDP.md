

# Lab 2-01: Configuration of Windows Virtual Machine in Azure using RDP

[Quickstart: Create a Windows virtual machine in the Azure portal](https://learn.microsoft.com/en-us/azure/virtual-machines/windows/quick-create-portal)

Scenario: An organization wants to find a solution to process the data stored in the same format from different applications built on a virtual machine.

Solution: The organization can use the Windows virtual machine and store the incoming data in the same format through the Azure function. This lab is divided into two sections:

### 1. Create and configure a virtual machine in Azure
### 2. Connect Windows Azure virtual machine using Remote Desktop Protocol (RDP)
---
* 01. Log in to the Microsoft Azure portal and go to the portal menu.
* 02. Go to the main menu, and click on “Create a resource.”
* 03. Type “Windows Server” in the search box and click “Enter.”
* 04. Click on “Select a software plan,” and find “[smalldisk] Windows Server 2019 Data center” from the list. Note: You can also use other Windows Server versions to create a virtual machine.
* 05. Click on “Create.”
* 06. After that, configure the virtual machine settings.
* 07. Choose an available resource group.
* 08. Name the virtual machine “dateyournameVM” (example: 20mayestebanVM)
* 09. Select the VM image of the same Windows Server version. Note: The size of the VM will be Standard DS1 v2. (choose the cheapest one)
* 10. Fill in the “Administrator account” details. Note: Use “yourname” as a “Username.”
* 11. Select “RDP (3389)” as an inbound port rule.
* 12. Click on “Next : Disk >.”
* 13. Choose “Premium SSD” as an OS disk type.
* 14. Click on “Next: Networking >.” 
* 15. Configure a new Virtual Network (VNet).
* 16. Click on “Create new.”
* 17. Set name as “whatever you want”
* 18. Give the default address space 
* 19. Add a public IP
* 20. Click on “OK.”
* 21. On "NIC network security group:" click "advanced" to create a new NSG (network security group)
* 22. click on "Delete public IP and NIC when VM is deleted"
* 23. Click on “Next : Management >”.
* 24. Click on “Next : monitoring >”.
* 25. Click on “Next : Advanced >”.
* 26. Click on “Next : Tags >”.
* 27. When the validation is passed, click on “Create.”
* 28. When all the deployment is done, click on “Go to resource.”
* 29. click on Connect > Connect > check inbound NSG rules botton (make your its accessible)
* 30. The configured Windows virtual machine is shown.

### 2. Connect Windows Azure virtual machine using Remote Desktop Protocol (RDP)
### From your PC:
* 01. Search “Remote Desktop Connection” from the start menu.
* 02. Enter the VM Public IP address and username.
* 03. Enable “Allow me to save credentials.”
* 04. show the network info with "ipconfig /all" in the cmd
* 05. send ScreenShot
> **Resources should be deleted after being used by the customer from the Azure portal. Otherwise, the customer will be highly charged according to the subscription criteria.**
