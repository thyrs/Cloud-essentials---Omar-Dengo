### Week 10 - GCP Fundamentals Part 2: Storage and Network Services

* **GCP Database**
    - Cloud SQL
    - Cloud Spanner
    - Firestore and Cloud Bigtable
* **Storage services**
    - Cloud Storage
    - Persistent disks on Compute Engine
    - Fully managed NFS file servers in Filestore
* **GCP Networking Services**
    - Virtual Private Cloud (VPC)
    - Firewall rules
    - Routes
    - Load balancing
    - Cloud DNS
    - Advanced connectivity


# GCP Database

Google Cloud provides a variety of SQL and NoSQL database services:

### Cloud SQL
https://www.youtube.com/watch?v=Kl8ig2BtLAY
Cloud SQL is a fully-managed database service that helps you set up, maintain, manage, and administer your relational databases on Google Cloud Platform.
You can use Cloud SQL with MySQL, PostgreSQL, or SQL Server.

### Cloud Spanner
Cloud Spanner is a fully managed, mission-critical, relational database service that offers transactional consistency at global scale, schemas, SQL (ANSI 2011 with extensions), and automatic, synchronous replication for high availability.

### Firestore and Cloud Bigtable
Developers describe Google Cloud Bigtable as "The same database that powers Google Search, Gmail and Analytics". Google Cloud Bigtable offers you a fast, fully managed, massively scalable NoSQL database service that's ideal for web, mobile, and Internet of Things applications requiring terabytes to petabytes of data.
On the other hand, Cloud Firestore is detailed as "NoSQL database built for global apps". Cloud Firestore is a NoSQL document database that lets you easily store, sync, and query data for your mobile and web apps - at global scale.

---

You can also choose to set up your preferred database technology on Compute Engine by using persistent disks. For example, you can set up MongoDB for NoSQL document storage.



# Storage services

Whatever your application, you'll probably need to store some media files, backups, or other file-like objects. Google Cloud provides a variety of storage services, including:

### Cloud Storage
https://www.youtube.com/watch?v=wNOs3LlsH6k
Object storage for companies of all sizes. Store any amount of data. Retrieve it as often as you’d like. You can start with a class that matches your current use, then reconfigure for cost savings.

* Standard Storage: Good for “hot” data that’s accessed frequently, including websites, streaming videos, and mobile apps.
* Nearline Storage: Low cost. Good for data that can be stored for at least 30 days, including data backup and long-tail multimedia content.
* Coldline Storage: Very low cost. Good for data that can be stored for at least 90 days, including disaster recovery.
* Archive Storage: Lowest cost. Good for data that can be stored for at least 365 days, including regulatory archives


### Persistent disks on Compute Engine
https://www.youtube.com/watch?v=sT7-_qn71cw
For use as primary storage for your instances. Compute Engine offers both hard-disk-based persistent disks, called standard persistent disks, and solid-state persistent disks (SSD).
Each of the following storage options has unique price and performance characteristics:

- **Zonal persistent disk:** Efficient, reliable block storage.
- **Regional persistent disk:** Regional block storage replicated in two zones.
- **Local SSD:** High performance, transient, local block storage.
- **Cloud Storage buckets:** Affordable object storage.
- **Filestore:** High performance file storage for Google Cloud users.


### Fully managed NFS file servers in Filestore
https://www.youtube.com/watch?v=QcsAb2RR52c
You can use Filestore instances to store data from applications running on Compute Engine VM instances or GKE clusters.


# GCP Fundamentals Part 3: Network Services
By Foundever Costa Rica
Foundever Costa Rica

## GCP Networking Services


While App Engine manages networking for you, and GKE uses the Kubernetes model, Compute Engine provides a set of networking services. These services help you to load-balance traffic across resources, create DNS records, and connect your existing network to Google's network.

### Virtual Private Cloud (VPC)
It provides a set of networking services that your VM instances use. An instance can have more than one interface, but each interface must be connected to a different network. 

Every VPC project has a default network. You can create additional networks in your project, but networks cannot be shared between projects.

A VPC network provides the following:

* Provides connectivity for your Compute Engine virtual machine (VM) instances, including Google Kubernetes Engine (GKE) clusters, App Engine flexible environment instances, and other Google Cloud products built on Compute Engine VMs.
* Offers built-in Internal TCP/UDP Load Balancing and proxy systems for Internal HTTP(S) Load Balancing.
* Connects to on-premises networks using Cloud VPN tunnels and Cloud Interconnect attachments.
* Distributes traffic from Google Cloud external load balancers to backends.


### Firewall rules
VPC firewall rules let you allow or deny connections to or from your virtual machine (VM) instances based on a configuration that you specify. Enabled VPC firewall rules are always enforced, protecting your instances regardless of their configuration and operating system, even if they have not started up.

Every VPC network functions as a distributed firewall. While firewall rules are defined at the network level, connections are allowed or denied on a per-instance basis. 
You can think of the VPC firewall rules as existing not only between your instances and other networks, but also between individual instances within the same network.


### Routes
Google Cloud routes define the paths that network traffic takes from a virtual machine (VM) instance to other destinations. These destinations can be inside your Google Cloud Virtual Private Cloud (VPC) network (for example, in another VM) or outside it.
In a VPC network, a route consists of a single destination prefix in CIDR format and a single next hop. When an instance in a VPC network sends a packet, Google Cloud delivers the packet to the route's next hop if the packet's destination address is within the route's destination range.


### Load balancing
If your website or application is running on Compute Engine, the time might come when you're ready to distribute the workload across multiple instances. Server-side load balancing features provide you with the following options:

* **Network load balancing** lets you distribute traffic among server instances in the same region based on incoming IP protocol data, such as address, port, and protocol. 
* **HTTP(S) load balancing** enables you to distribute traffic across regions so you can ensure that requests are routed to the closest region or, in the event of a failure or over-capacity limitations, to a healthy instance in the next closest region.

### Cloud DNS
Cloud DNS is a high-performance, resilient, global Domain Name System (DNS) service that publishes your domain names to the global DNS in a cost-effective way.
DNS is a hierarchical distributed database that lets you store IP addresses and other data, and look them up by name. Cloud DNS lets you publish your zones and records in DNS without the burden of managing your own DNS servers and software.
Cloud DNS offers both public zones and private managed DNS zones. A public zone is visible to the public internet, while a private zone is visible only from one or more Virtual Private Cloud (VPC) networks that you specify.

### Advanced connectivity
If you have an existing network that you want to connect to Google Cloud resources, Google Cloud offers the following options for advanced connectivity:

* **Cloud Interconnect** enables you to connect your existing network to your VPC network through a highly available, low-latency, enterprise-grade connection. 
* **Cloud VPN** enables you to connect your existing network to your VPC network through an IPsec connection. You can also use VPN to connect two Cloud VPN gateways to each other.
* **Direct Peering** enables you to exchange internet traffic between your business network and Google at one of Google's broad-reaching edge network locations. See Google's peering site for more information about edge locations.
* **Carrier Peering** enables you to connect your infrastructure to Google's network edge through highly available, lower-latency connections by using service providers.