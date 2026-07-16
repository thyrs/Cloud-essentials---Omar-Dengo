# Week 6: What is cloud computing?

Cloud computing is the delivery of computing services—including servers, storage, databases, networking, software, analytics, and intelligence—over the Internet 

# Types of cloud computing: Public, Private and Hybrid

**Public Clouds:** are __owned and operated by a third-party__ cloud service providers: AWS amazon web services, Azure, Google cloud

**Private Clouds:** A private cloud refers to cloud computing resources __used exclusively by a single business or organization__. Like a company’s on-site datacenter. Some companies also pay third-party service providers to host their private cloud. A private 

**Hybrid Clouds:** Hybrid clouds combine public and private clouds, bound together by technology that allows data and applications to be shared between them. 



## Types of Cloud services

![alt text](./images/Paas-2.png)

* **Software as a Service** (SaaS) (Producto terminando) Torillas
    - Cloud provider provides applications and final services. office360, email,

* **Platform as a Service** (PaaS) (Materia prima) Masa
    - The cloud provider is responsible for providing users access to the development tools and services used to deliver the applications. herramientas de programacion, como accesso a Java, python...

* **Infrastructure as a Service** (IaaS) - (Tierra y recursos)  
    - The cloud provider is responsible for giving IT managers access to the network equipment, virtualized network services, and supporting network infrastructure. accesso a el poder de processamiento que el cliente tiene que configuar y manejar



# TCO, Performance, Scaling and Authentication


What is TCO ?

TCO or **Total Cost of Ownership** It is a calculation that reveals the cost of owning a product or service for a given period. The calculation covers the total cost of acquisition and operation rather than just the acquisition.

Although the concept of the total cost of ownership has been around since the early twentieth century, it was popularized by the Gartner Group during the eighties. It is particularly relevant in information technology deployment decisions.


Factors to consider:
* Hardware and software to build the network
* Hardware and software needed to set up servers
* Hardware and software for individual work stations
* Cost of installing and integrating all these components
* Migration costs
* Any license fees to be paid
* What are the financial implications of glitches or failures?
* How often will the hardware or software be upgraded, and what would that cost?
* If support is needed, will it be available, and what costs would this incur?
* How much is the space the new system takes up worth?
* How will this affect utility costs? For example, cooling a complex server can be extremely expensive.
* If backup power systems have to be installed and maintained, what would they cost?
* What cybersecurity measures must be in place, what will they cost, and what are the cost implications of failure?
* Data must be backed up, and if there is a failure, it should be recoverable. This also has a price tag.
* Managers and staff must be trained to use the new systems. How costly will user adoption be?
* The new equipment must be insured. What will the premiums be?
* Will additional personnel be needed to support the new system?
* What if we want to upgrade or upscale?
* Eventually, we would have to replace the system, what is the projected replacement cost?
* When we decommission the system, what costs will we incur?


## Other Cloud concepts:


| Metrics                       | Description                                                                      |
| ----------------------------- | -------------------------------------------------------------------------------- |
| Service response time (delay) | The latency time between service request and service completion                  |
| Service throughput            | The number of jobs that can be processed by the service provider in a time unit  |
| Service **availability**      | The probability that a service request can be accepted by the service provider   |
| System **utilization**        | The percentage of system resources that are busy for service provisioning        |
| System **resilience**         | The stability of system performance over time especially under bursty loads      |
| System **scalability**        | The ability of a system to performance well when it is changed in size or volume |
| System **elasticity**         | The ability of a system to adapt to changes in its loads                         |


### Scalability
Scalability is the ability to easily add or subtract compute or storage resources.

**Cloud Vertical Scaling** refers to adding more CPU, memory, or I/O resources to an existing server, or replacing one server with a more powerful server. 
**Cloud Horizontal Scaling** refers to provisioning additional servers to meet your needs, often splitting workloads between servers

> **Manual scaling:** is just as it sounds. It requires an engineer to manage scaling-up/down or out/in. In the cloud, both vertical and horizontal scaling can be accomplished with the push of a button, so the actual scaling isn’t terribly difficult. 
> **Scheduled scaling:** solves some of the problems with manual scaling. Based on your usual demand curve, you can scale out to.
> **Automatic scaling:** (also known as autoscaling) is when your compute, database, and storage resources scale automatically based on predefined rules.



# Authentication vs Authorization

## Authentication

It is the process of **verifying that users are who they say they are.** 

### Advanced Authentication Methods

In securing your data applications, simple username and password authentication may not be sufficient. You should take extra care in situations where the identity of the person making a request may be especially questioned, such as external requests to internal systems.

#### Multifactor authentication

Multifactor authentication gets its name from the use of multiple authentication factors:

1. **Something you know** would be a password, a birthday, or some other personal information. 
2. **Something you have** would be a one-time use token, a smartcard, or some other artifact that you might have in your physical possession. 
3. **Something you are** would be your biometric identities, like a fingerprint or a speech pattern. 


## Risk-based authentication

Risk-based authentication uses a risk profile to determine whether the authentication request could be suspect. 

Each authentication attempt is given a risk score. If the risk score exceeds a certain value, the Web site or service provider can request additional information before allowing access. This additional information could be in the form of security questions or an additional authentication factor.


### Risk-Based Authentication – Example Profiles

| Risk Level | User                   | Context Sig   nals                       | System Action                    | Reason                                            |
| ---------- | ---------------------- | ---------------------------------------- | -------------------------------- | ------------------------------------------------- |
| Low        | Sarah (Employee)       | Same device, same location, normal hours | Allow access (password/SSO only) | Nothing changed. No need to add useless friction. |
| Medium     | Mike (Support Agent)   | New device, same country, usual hours    | Step-up auth (push or SMS OTP)   | New device adds risk. Verify it’s really him.     |
| High       | Lina (Finance Manager) | New device, new country, unusual time    | Strong MFA or temporary block    | Multiple red flags. Assume compromise.            |
| Very High  | Stolen credentials     | Malicious IP, impossible travel          | Immediate block + password reset | This is an attack, not a user. Shut it down.      |



## AUTHORIZATION

After users have been authenticated, authorization begins. **Authorization is the process of specifying what a user is allowed to do.** Authorization is not just about systems and system access. Authorization is any right or ability a user has anywhere.
