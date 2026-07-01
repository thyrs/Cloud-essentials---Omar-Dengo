# Lab - Cosmos DB

**Scenario:** John wants to create a database for the storage of data for his company and needs that database to scale as per requirement. The scaling of that particular database must be global and easy. How can this be done?

**Solution:** Using Cosmos DB as a database benefits you from scaling your database by replicating multiple geographical locations with a single click.

01. Login to Azure Portal and go to the “Azure Cosmos DB” service.
02. Click on “Create.”
> for the API select: "Azure Cosmos DB for NoSQL"
03. Click on “Create new” in the resource group. Enter the name of the resource group, then click “OK.”
- Workload Type = Development/testing
04. Now enter the name of the account and leave everything as default. Click on “Review + create.”
05. Click “Create.”

06. Once the deployment is complete, click on “Go to resource.”
07. You can see the URL here, which you can use to access the data in Cosmos DB if accessing outside Azure.
08. Now, click on settings > “Backup & Restore”
09. Here, you can enable Backups for your data. 
10. Enable backups every day and retain the Backup for only 2 days (take screenshot)

**Resources should be deleted after being used by the customer from the Azure portal. Otherwise, the customer will be highly charged according to the subscription criteria.**

