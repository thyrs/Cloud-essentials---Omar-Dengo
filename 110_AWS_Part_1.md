### Week 11 - AWS Fundamentals Part 1: Core Concepts


## How does it work?
* Infrastructure: Regions, Availability zones and Local Zones
    - AWS Regions
    - Availability Zones
    - Local Zones
# Management Console
## AWS Command Line Interface
### Stay connected to your AWS resources

# Compute Service
### Amazon EC2 instance types
## Amazon EC2 Auto Scaling
## AWS Lambda


Amazon web service is a platform that offers flexible, reliable, scalable, easy-to-use and cost-effective cloud computing solutions.

AWS is a comprehensive, easy to use computing platform offered Amazon. The platform is developed with a combination of infrastructure as a service (IaaS), platform as a service (PaaS) and packaged software as a service (SaaS) offerings.

Amazon Web Services offers a wide range of different business purpose global cloud-based products. The products include storage, databases, analytics, networking, mobile, development tools, enterprise applications, with a pay-as-you-go pricing model.

## How does it work?

AWS is separated into different services; each can be configured in different ways based on the user's needs. Users should be able to see configuration options and individual server maps for an AWS service.

More than 100 services comprise the Amazon Web Services portfolio, including those for compute, databases, infrastructure management, application development and security.

Some of these services will be detailed later in the module


# Infrastructure

AWS now spans 77 Availability Zones within 24 geographic regions around the world and has announced plans for 18 more Availability Zones and 6 more AWS Regions in Australia, India, Indonesia, Japan, Spain, and Switzerland.

Below you will see some benefits offered by AWS

**Security:** Custom-built for the cloud and designed to meet the most stringent security requirements in the world, the infrastructure is monitored 24/7 to help ensure the confidentiality, integrity, and availability of your data.
**Availability:** Each region is fully isolated and comprised of multiple AZ’s, which are fully isolated partitions of our infrastructure. 
**Performance:** AWS Regions offer low latency, low packet loss, and high overall network quality. This is achieved with a fully redundant 100 GbE fiber network backbone, often providing many terabits of capacity between Regions. 
**Global Footprint:** AWS has the largest global infrastructure footprint of any provider, and this footprint is constantly increasing at a significant rate. 
**Scalability:** Companies can quickly spin up resources as they need them, deploying hundreds or even thousands of servers in minutes.
**Flexibility:** The AWS Global Infrastructure gives you the flexibility of choosing how and where you want to run your workloads, and when you do you are using the same network, control plane, API’s, and AWS services.


## Regions, Availability zones and Local Zones

Amazon cloud computing resources are hosted in multiple locations world-wide. These locations are composed of AWS Regions, Availability Zones, and Local Zones. Each AWS Region is a separate geographic area. Each AWS Region has multiple, isolated locations known as Availability Zones.

By using Local Zones, you can place resources, such as compute and storage, in multiple locations closer to your users.

### AWS Regions
AWS has the concept of a Region, which is a physical location around the world where we cluster data centers. We call each group of logical data centers an Availability Zone. Each AWS Region consists of multiple, isolated, and physically separate AZ's within a geographic area. 
Unlike other cloud providers, who often define a region as a single data center, the multiple AZ design of every AWS Region offers advantages for customers.

### Availability Zones
https://www.youtube.com/watch?v=RPis5mbM8c8
An Availability Zone (AZ) is one or more discrete data centers with redundant power, networking, and connectivity in an AWS Region. AZ’s give customers the ability to operate production applications and databases that are more highly available, fault tolerant, and scalable than would be possible from a single data center. 
All AZ’s in an AWS Region are interconnected with high-bandwidth, low-latency networking, over fully redundant, dedicated metro fiber providing high-throughput, low-latency networking between AZ’s. All traffic between AZ’s is encrypted.


### Local Zones
AWS Local Zones place compute, storage, database, and other select AWS services closer to end-users. With AWS Local Zones, you can easily run highly-demanding applications that require single-digit millisecond latencies to your end-users such as media & entertainment content creation, real-time gaming, reservoir simulations, electronic design automation, and machine learning.
Each AWS Local Zone location is an extension of an AWS Region where you can run your latency sensitive applications using AWS services such as Amazon Elastic Compute Cloud, Amazon Virtual Private Cloud, Amazon Elastic Block Store, Amazon File Storage, and Amazon Elastic Load Balancing in geographic proximity to end-users.


# Management Console

The console makes it easy to find new AWS services, configure services, view service usage, and so much more. From updating user groups to building applications to troubleshooting issues, with the Console, you can take action quickly.

All IaaS AWS administration, management, and access functions in the AWS Console are available in the AWS API and CLI.
<!-- picture -->
In order to use it, you just need an AWS account and a supported browser


## AWS Command Line Interface

The AWS Command Line Interface (CLI) is a unified tool to manage your AWS services. With just one tool to download and configure, you can control multiple AWS services from the command line and automate them through scripts.

Below you will see some examples of codes that can be run using CLI

```sh
$ aws ec2 describe-instances
$ aws ec2 start-instances --instance-ids i-1348636c
$ aws sns publish --topic-arn arn:aws:sns:us-east-1:546419318123:OperationsError --message "Script Failure"
$ aws sqs receive-message --queue-url https://queue.amazonaws.com/546419318123/Test
```
### Stay connected to your AWS resources

The Console Mobile Application allows you to monitor resources through a dedicated dashboard and view configuration details, metrics, and alarms for select AWS services. The Dashboard provides permitted users with an overview of the account status, with real-time data on Amazon CloudWatch, Personal Health Dashboard, and AWS Billing and Cost Management. 

You can view ongoing issues and follow through to the relevant CloudWatch alarm screen for a detailed view with graphs and configuration options. In addition, you can check on the status of specific AWS services, view detailed resource screens, and perform select actions.



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
