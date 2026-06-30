


# Lab 5-01 Cosmos DB
Scenario: John wants to create a database for the storage of data for his company and needs that database to scale as per requirement. The scaling of that particular database must be global and easy. How can this be done?
Solution: Using Cosmos DB as a database benefits you from scaling your database by replicating multiple geographical locations with a single click.
01. Login to Azure Portal and go to the “Azure Cosmos DB” service.
02. Click on “Create.”
* for the API select: "Azure Cosmos DB for NoSQL"
03. Click on “Create new” in the resource group. Enter the name of the resource group, then click “OK.”
04. Now enter the name of the account and leave everything as default. Click on “Review + create.”
05. Click “Create.”



06. Once the deployment is complete, click on “Go to resource.”
07. You can see the URL here, which you can use to access the data in Cosmos DB if accessing outside Azure.

- add container
- add data
 <!-- pending -->

08. Now, click on “Replicate Data Globally.”
09. Here, you can enable more data centers. The blue ticks on the map indicate where your actual data center is.
10. Now, click on the region where you want to replicate the data, then click “Save.” After that, the data is replicated all across the two regions.

**Resources should be deleted after being used by the customer from the Azure portal. Otherwise, the customer will be highly charged according to the subscription criteria.**


