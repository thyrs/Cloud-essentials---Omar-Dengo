

# Lab 2-02 Azure App Services

**Scenario:** An organization wants to deploy a web app by using an Azure service that provides a fully managed infrastructure environment for customers and developers to develop and manage applications without having to worry about managing the infrastructure. How can this be done?

**Solution:** Azure App Service is a fully managed Platform as a Service (PaaS), which means servers, networks, storage, and other fundamental infrastructures are all managed and controlled by Azure. Web Apps allow to creation, deployment, and scale of Web Apps to enterprise grade in seconds.

### Step-by-Step Guide
Below are some steps to creating a Web App using Azure App services.
01. Login to “Azure portal.” Select “App Services” from the dashboard.
02. Click the “+ Add” icon to create a "Web App" by providing the required details, such as the name of the App, resource group name, etc.
03. When you click on the “+ Add button,” you will see a screen where you can enter all the information needed to create a web app. All required fields are marked using an asterisk (*) symbol.
04. Select “Subscription” and create a resource group.
05. Provide a name to the resource group; we named it “IPS_appservice.”
06. Provide instance details such as name, publish, runtime stack, operating system, and region.
- Publish: Container
- operating system: linux
- region: central US
- princing plan: free F1
07. Create an App Service Plan.
08. When you click on “App Service Plan,” you will see a screen with the “+ Create new” button, allowing for creating a new App Service Plan.
09. Change the pricing tier.
10. When you click on this option, you will see another screen presenting available features for different tiers. This choice is essential feature-wise and will depend, in most cases, on the environmental characteristics you are planning, such as Dev/Test environments and Production applications.
11. The “Dev/Test” category shows F, D, and B tiers (free, shared, and basic). They are designed for simple dev/test scenarios and lightweight web applications that do not need features such as auto-scaling or backups.
12. Select the recommended pricing tiers that are F1.
13. The “Production” category offers powerful machines and advanced features useful in many realistic scenarios, such as APIs, e-commerce, and popular portals.
14. Select the recommended pricing tiers.
15. After selecting, click the “Apply” button.
16. Click the “Review + create” button after providing all the details required in the field.
17. After viewing that all the provided details are appropriate on the summary page, click the ‘Create button,’ and you will see the notification about deployment initializing.
18. When the deployment is completed, click on “Go to resource.”
19. Go to the overview tab of the resource group; it will show the details of the app details.
20. Click on the URL, the link to the web app we created.
21. You will be presented with a page when you click on the URL, as shown below.

> you can go to "development tools" > SSH 
```sh
# insde the CLI you can go to the Http server page: 
vi /home/site/wwwroot/hostingstart.html
# modify the sentence: "Your web app is running and waiting for your content" save it
service nginx restart
# restart Http server
```
then go back to the portal on the app service and click on restart:
it could take up to 5 minutes for your content to show up



**Resources should be deleted after being used by the customer from the Azure portal. Otherwise, the customer will be highly charged according to the subscription criteria.**