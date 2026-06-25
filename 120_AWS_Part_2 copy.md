# Week 12  AWS Fundamentals Part 2: Storage and Compute Services


## Database Services

AWS databases are built for business-critical, enterprise workloads, offering high availability, reliability, and security. These databases support multi-region, multi-master replication, and provide full oversight of your data with multiple levels of security, including network isolation, and end-to-end encryption.

### Relational Database  vs Non-relational Databases

| Relational database                                                                                                                                                                                         | Non-relational Databases                                                                                                                                                                                                           |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| In a relational database, data is stored in a way that relates it to other pieces of data.                                                                                                                  | In a non-relational database, you create tables. A table is a place where you can store and query data.                                                                                                                            |
| An example of a relational database might be the coffee shop’s inventory management system. Each record in the database would include data for a single item, such as product name, size, price, and so on. | Non-relational databases are sometimes referred to as “NoSQL databases” because they use structures other than rows and columns to organize data. One type of structural approach for non-relational databases is key-value pairs. |
| Relational databases use structured query language (SQL) to store and query data. This approach allows data to be stored in an easily understandable, consistent, and scalable way.                         | In a key-value database, you can add or remove attributes from items in the table at any time. Additionally, not every item in the table has to have the same attributes.                                                          |

https://www.youtube.com/watch?v=AbhnNqlOYWY


### Amazon Relational Database Service

Amazon Relational Database Service (Amazon RDS) is a service that enables you to run relational databases in the AWS Cloud.
Amazon RDS is a managed service that automates tasks such as hardware provisioning, database setup, patching, and backups. With these capabilities, you can spend less time completing administrative tasks and more time using data to innovate your applications. 
You can integrate Amazon RDS with other services to fulfill your business and operational needs, such as using AWS Lambda to query your database from a serverless application.
Supported database engines include:

* Amazon Aurora
* PostgreSQL
* MySQL
* MariaDB
* Oracle Database
* Microsoft SQL Server
![alt text](image-6.png)

### Amazon DynamoDB

Amazon DynamoDB is a key-value database service. It delivers single-digit millisecond performance at any scale.

* DynamoDB is serverless, which means that you do not have to provision, patch, or manage servers.
* You do not have to install, maintain, or operate software.
* As the size of your DB shrinks or grows, DynamoDB automatically scales to adjust for changes in capacity while maintaining consistent performance.
Example of data in a nonrelational database:
![alt text](image-7.png)



### Other Database Services
- Amazon Aurora is an enterprise-class relational database. It is compatible with MySQL and PostgreSQL relational databases. It is up to five times faster than standard MySQL databases and up to three times faster than standard PostgreSQL databases.
- Amazon Redshift is a data warehousing service that you can use for big data analytics. It offers the ability to collect data from many sources and helps you to understand relationships and trends across your data.
- Amazon ElastiCache is a service that adds caching layers on top of your databases to help improve the read times of common requests.
- Amazon Neptune is a graph database service.
You can use Amazon Neptune to build and run applications that work with highly connected datasets, such as recommendation engines, fraud detection, and knowledge graphs.


# Compute Service

Amazon **Elastic Compute Cloud (Amazon EC2)** is a web service that provides secure, resizable compute capacity in the cloud. It is designed to make web-scale computing easier for developers.

It provides you with complete control of your computing resources and lets you run on Amazon’s proven computing environment.

### Amazon EC2 instance types

1. General purpose instances provide a balance of compute, memory, and networking resources. You can use them for a variety of workloads, such as application servers, gaming servers, backend servers for enterprise applications, small and medium databases.
2. Compute optimized instances are ideal for compute-bound applications that benefit from high-performance processors. Like general purpose instances, you can use compute optimized instances for workloads such as web, application, and gaming servers.
3. Memory optimized instances are designed to deliver fast performance for workloads that process large datasets in memory. In computing, memory is a temporary storage area. It holds all the data and instructions that a central processing unit (CPU) needs to be able to complete actions. Before a computer program or application is able to run, it is loaded from storage into memory. This preloading process gives the CPU direct access to the computer program.
4. Accelerated computing instances use hardware accelerators, or coprocessors, to perform some functions more efficiently than is possible in software running on CPUs. Examples of these functions include floating-point number calculations, graphics processing, and data pattern matching.
5. Storage optimized instances are designed for workloads that require high, sequential read and write access to large datasets on local storage.


## Amazon EC2 Auto Scaling

Amazon EC2 Auto Scaling helps you maintain application availability and allows you to automatically add or remove EC2 instances according to conditions you define. 


Use the fleet management features of Amazon EC2 Auto Scaling to maintain the health and availability of your fleet. Y
**You can also use the dynamic and predictive scaling features of Amazon EC2 Auto Scaling to add or remove EC2 instances.**

Dynamic scaling responds to changing demand and predictive scaling automatically schedules the right number of EC2 instances based on predicted demand. Dynamic scaling and predictive scaling can be used together to scale faster.

## AWS Lambda

AWS Lambda lets you run code without provisioning or managing servers. You pay only for the compute time you consume—there is no charge when your code is not running. With Lambda, you can run code for virtually any type of application or backend service—all with zero administration. Just upload your code, and Lambda takes care of everything required to run and scale your code with high availability. 

You can set up your code to automatically trigger from other AWS services, or you can call it directly from any web or mobile app.

https://www.youtube.com/watch?v=eOBq__h4OJ4


# Storage Services

AWS offers a complete range of services for you to store, access, govern, and analyze your data to reduce costs, increase agility, and accelerate innovation. Select from object storage, file storage, and block storage services, backup, and data migration options to build the foundation of your cloud IT environment.


### Amazon S3
https://www.youtube.com/watch?v=_I14_sXHO8U
Amazon Simple Storage Service (Amazon S3) is an object storage service that offers industry-leading scalability, data availability, security, and performance. This means customers of all sizes and industries can use it to store and protect any amount of data for a range of use cases, such as websites, mobile applications, backup and restore, archive, enterprise applications, IoT devices, and big data analytics. 

Amazon S3 provides easy-to-use management features so you can organize your data and configure finely-tuned access controls to meet your specific business, organizational, and compliance requirements. Amazon S3 is designed for 99.999999999% (11 9's) of durability, and stores data for millions of applications for companies all around the world.

### Amazon Elastic Block Store
https://www.youtube.com/watch?v=77qLAl-lRpo
Amazon Elastic Block Store (Amazon EBS) provides persistent block storage volumes for use with Amazon EC2 instances in the AWS Cloud. Each Amazon EBS volume is automatically replicated within its Availability Zone to protect you from component failure, offering high availability and durability. 

Amazon EBS volumes offer the consistent and low-latency performance needed to run your workloads. With Amazon EBS, you can scale your usage up or down within minutes—all while paying a low price for only what you provision.

### Amazon Elastic File System
https://www.youtube.com/watch?v=AvgAozsfCrY
Amazon Elastic File System (Amazon EFS) provides a simple, scalable, elastic file system for Linux-based workloads for use with AWS Cloud services and on-premises resources. It is built to scale on demand to petabytes without disrupting applications, growing and shrinking automatically as you add and remove files, so your applications have the storage they need – when they need it. 
It is designed to provide massively parallel shared access to thousands of Amazon EC2 instances, enabling your applications to achieve high levels of aggregate throughput and IOPS with consistent low latencies. Amazon EFS is a fully managed service that requires no changes to your existing applications and tools, providing access through a standard file system interface for seamless integration. 
Amazon EFS is a regional service storing data within and across multiple Availability Zones (AZs) for high availability and durability. You can access your file systems across AZs and regions and share files between thousands of Amazon EC2 instances and on-premises servers via AWS Direct Connect or AWS VPN.

---


**Do not mix Instance Store and EBS!**
**An instance store provides temporary block-level storage for an Amazon EC2 instance, while EBS provides block-level storage volumes which remains available even after terminating a ECS instance**

When it comes to S3, it offers different storage classes, the characteristics of each one are summarized below


| Storage Class                 | Characteristic 1                                        | Characteristic 2                                                                |
| ----------------------------- | ------------------------------------------------------- | ------------------------------------------------------------------------------- |
| S3 Standard                   | Designed for frequently accessed data                   | Stores data in a minimum of three Availability Zones                            |
| S3 Standard Infrequent Access | Ideal for infrequently accessed data                    | Similar to S3 Standard but has a lower storage price and higher retrieval price |
| S3 One Zone Infrequent Access | Stores data in a single Availability Zone               | Has a lower storage price than S3 Standard-IA                                   |
| S3 Intelligent-Tiering        | Ideal for data with unknown or changing access patterns | Requires a small monthly monitoring and automation fee per object               |
| S3 Glacier                    | Low-cost storage designed for data archiving            | Able to retrieve objects within a few minutes to hours                          |
| S3 Glacier Deep Archive       | Lowest-cost object storage class ideal for archiving    | Able to retrieve objects within 12 hours                                        |