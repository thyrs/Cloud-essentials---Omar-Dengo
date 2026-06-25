### Week 11 - AWS Fundamentals Part 1: Core Concepts


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