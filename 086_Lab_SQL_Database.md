# Lab - Create SQL Database


**Scenario:** An organization is new to Azure. Their database team is assigned to use the Azure service to make a database and then query all on-premises data in that database. How would they do that?

**Solution:** The organization fulfills the above requirement by using the Azure SQL Database service.

01. Log in to the Microsoft Azure portal and go to the portal menu.
02. Go to the main menu and click on Create a resource.
03. From the Categories, select Databases and click on SQL Database.
04. First, select your Azure subscription and resource group to configure the SQL server. Note: Click on Create new to create a new resource group if you do not have any.
05. After that, scroll down and enter the Database details.
06. Write a unique name for your database.
07. Click on Create new to create a new SQL server.
08. To configure the SQL server, write a unique server name.
09. Select Location. *Note: You should select the exact location in which the resource group is present.*
10. Scroll down, and select the "Use SQL Authentication method".
11. Create unique SQL Server login credentials.
12. Click on OK.
13. Acknowledge the recently created SQL server in the selected location.
14. Select No option for SQL elastic pool.
- Workload environment = Development
15. Select the Geo-redundant backup storage option to backup storage redundancy.
16. Click on Next: Networking >.
17. In the Networking section, select Public endpoint for Network connectivity.
18. Select the Minimum TSL version.
19. Click on Next: Security >.
20. In the Security section,  select NO for the Start free trial option to Enable Azure Defender for SQL. 
21. Click on Next: Additional Settings >.
22. In the Additional Settings section, use the Sample option for Use exiting data.
23. Click on Review + create.
24. Once the validation is passed, click on Create.
25. After the deployment of the SQL server, the notification will appear.
26. Click on Go to resource.
27. Verify the configuration details from the Overview page.
28. Now, click on Set server firewall present on the top given options.
29. Select the Yes option to Allow Azure services and resources to access this server.
30. Click on Save to save the settings.
31. From the overview page, click on Query editor (preview) from the left side given menu.
32. Use the same SQL server login credential that you created in the previous steps.
33. Click on OK.
34. The following error will appear if your server is not allowed to access from a client IP address.
35. To allow access to your server, go back to the overview page of the SQL server.
36. Click on the Set server firewall option from the top given options.
37. Click on + Add client IP.
38. Add ClientIPAddress with the same IP address as defined in error.
39. Click on Save to save the settings.
40. Now, go to the Query editor (preview) option again and log in with the same SQL service credential.
41. The query editor will successfully open now.
42. Inside the Query 1 section, enter the following code and click on Run.
```sql
SELECT TOP 20 pc.Name as CategoryName, p.name as ProductName
FROM SalesLT.ProductCategory pc
JOIN SalesLT.Product p ON pc.ProductCategoryID = p.ProductCategoryID;
```
43. Explore the results with Query succeeded statement. The database will be created, and you can successfully query the data. (take screenshot)

**Resources should be deleted after being used by the customer from the Azure portal. Otherwise, the customer will be highly charged according to the subscription criteria.**