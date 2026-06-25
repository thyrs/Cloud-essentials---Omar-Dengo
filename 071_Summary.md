

### What is Azure Marketplace?

Azure Marketplace customers can **find, try, purchase, and provision applications and services** from hundreds of leading service providers.



## Azure architectural components

```
        Management Group 
                 │
       ┌─────────┼─────────┐
  Subscription1        Subscription2
        │                   │
   ┌────┼────┐         ┌────┼────┐
   RG1      RG2       RG3       RG4  << (Resource groups)
    │        │         │         |
  -VM1     -App       SQL      -Blob   
  -VM2     -Func               -Files 
```

## Azure subscriptions
An Azure **subscription is a logical unit of Azure services** that links to an Azure account

## Azure management groups
If your organization has many subscriptions, you might need a way to efficiently manage access, policies, and compliance for those subscriptions. **Azure management groups provide a level of scope above subscriptions.** 

## Azure resource groups
Resource groups are a fundamental element of the Azure platform. A resource group is a **logical container for resources** deployed on Azure. 

## Azure resource
A resource is a **manageable item** that's available through Azure. Virtual machines (**VMs**), **storage** accounts, web **apps**, **databases**, and virtual networks are examples of resources.

## Azure Resource Manager
Azure Resource Manager is the deployment and management service for Azure. It provides a management layer that enables you to **create, update, and delete resources** in your Azure account.



# Azure regions and availability zones
```
                 REGION PAIR 1                                   REGION PAIR 2                 
┌────────────────────────────────────────────┐  ┌─────────────────────────────────────────────┐
│               > Replication >              │  │               > Replication >               │
│┌────────────────┐        ┌────────────────┐│  │┌────────────────┐        ┌────────────────┐ │
││    Region A    │=======>│    Region B    ││  ││    Region C    │=======>│    Region D    │ │
││                │<=======│                ││  ││                │<=======│                │ │
││ Availability Z1│        │ Availability Z1││  ││ Availability Z1│        │ Availability Z1│ │
││  ↑ Replicate ↓ │        │  ↑ Replicate ↓ ││  ││  ↑ Replicate ↓ │        │  ↑ Replicate ↓ │ │
││ Availability Z2│        │ Availability Z2││  ││ Availability Z2│        │ Availability Z2│ │
││  ↑ Replicate ↓ │        │  ↑ Replicate ↓ ││  ││  ↑ Replicate ↓ │        │  ↑ Replicate ↓ │ │
││ Availability Z3│        │ Availability Z3││  ││ Availability Z3│        │ Availability Z3│ │
│└────────────────┘        └────────────────┘│  │└────────────────┘        └────────────────┘ │
└────────────────────────────────────────────┘  └─────────────────────────────────────────────┘
```

# Azure regions
A region is a geographical area on the planet that contains at least one but potentially **multiple datacenters** that are nearby and networked together


## Azure availability zones

Availability zones are **physically separate datacenters** within an Azure region.


## Azure region pairs

Each Azure region is always paired with another region within the same geography (such as US, Europe, or Asia) at least 300 miles away. This approach allows for the **replication of resources** (such as VM storage) across a geography that helps reduce the likelihood of interruptions

---

# Azure Compute Services

### Azure Virtual Machines
With Azure Virtual Machines, you can create and use VMs in the cloud. VMs provide **infrastructure as a service (IaaS)**

### Azure App 
App Service enables you to build and host web apps, background jobs, mobile back-ends, and RESTful APIs in the programming language of your choice **without managing infrastructure.**

### Azure Functions
**Azure Functions:** Functions can execute code in almost any modern language.
**Azure Logic Apps:** Logic apps are designed in a web-based designer and can execute logic triggered by Azure services without writing any code.