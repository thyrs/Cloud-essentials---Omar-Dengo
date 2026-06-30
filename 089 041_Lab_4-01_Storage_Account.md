
041_Lab_4-01_Storage_Account

# Lab 4-01 Creating a Storage Account

Scenario: John has an organization for which he wants storage in Azure Cloud to store essential documents. Which storage option can he use to store the documents? 
Solution: By using Azure Storage, he can store his organization’s vital documents.

01. Log in to the Azure portal and go to the “Storage Accounts” service.
02. Click “Create.”
03. Select your subscription and go to “Create new” in the resource group option.
04. Enter the name of the resource group and click “OK.”
05. In the instance detail, enter “Storage account name” (the name should be lowercase).
06. Leave everything else by default and click on “Review + create.”
07. Click “Create.”
08. Now your storage account has been deployed. Go to “Deployment details.”
09. Click on the resource that you created. You will see the overview of the storage account.
* go to the storage account > settings > configuration > allow container anonymous access

10. Now, you will see the service option, where you get multiple storage options.
11. go to data starage > Click on Containers.
12. Enter the name and leave the public access level default(container). Click on OK.
13. The container has now been created.
14. Go to the container and click on Upload.
15. Now, upload a file in the container by selecting a file and clicking on Upload.
16. You will see that the file has been uploaded inside the container. If you want to change the access level, go to the “Change access level” option.

* go to the container > change access level > 
17. Change it to read-only access for blobs. Click “OK.”
18. You can now access this file over the internet by its URL. Click on the file and copy the URL.
19. Paste it in your browser, and then you will see that the file is accessible over the internet.
take Screenshot

![alt text](https://mystaorageaccut.blob.core.windows.net/newcontainer/newdirect/unnamed%20(1).jpg)

**Resources should be deleted after being used by the customer from the Azure portal. Otherwise, the customer will be highly charged according to the subscription criteria.**