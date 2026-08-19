# Cloud Essentials — Final Lab
### Azure, Google cloud or AWS Windows & Linux, Apache Web Server
**Weight:** 60% of Final Grade
**Estimated Time:** 90–120 minutes

---

## 📋 General Instructions

- Read each step **completely** before doing it.
- Work **individually**. This is a graded assessment.
- Take **screenshots** at the last step.
- If you get stuck, re-read the step. Then ask your trainer.
- **Do not delete your resources** until your trainer confirms the lab is good.

---

## What You Will Build

By the end of this lab, you will have:

- A **VPC** (Virtual Private Cloud) with a defined IP range
- Two **virtual machines** inside that VPC:
  - One **Windows Server** (accessed via RDP)
  - One **Linux Server** (accessed via SSH)
- An **Apache web server** running on the Linux VM
- A **custom HTML page** with your name, visible from the Windows VM browser

---

## 🗺️ Architecture Overview
```
Your Laptop
     │
     ├── RDP ──────────────────────────────────────┐
     │                                             ▼
     │                              ┌──── Windows EC2 (172.16.99.x)
     │                              │         │
     └── SSH ──────────────────┐    │         │ Browser → http://172.16.99.x
                               ▼    │         │
                    ┌─── Linux EC2 (172.16.99.x)◄──┘
                    │    Apache2 + Custom Page
                    │
          Subnet: 172.16.99.0/24
```
## PART 1 — Create the Network (VPC)
Points: 15 | Estimated time: 20 minutes

### Step — Create the Virtual Network

* Name tag:	FinalLab-VPC
* IPv4 CIDR block	172.16.99.0/24


## PART 2 — Create the Virtual Machines 
Points: 20 | Estimated time: 25 minutes

### Step — Launch the Linux EC2 Instance

* Name: FinalLab-Linux-your_name_here
* AMI (OS): Ubuntu Server 22.04 LTS (Free tier eligible)
* Instance Type: t2.micro (Free tier eligible)
* Virtual Network: FinalLab-VPC 172.16.99.0/24
* Auto-assign public IP	

#### Create new security group

Add the following rules to the security group:

| Type | Protocol | Port | Source    | Why                         |
| ---- | -------- | ---- | --------- | --------------------------- |
| SSH  | TCP      | 22   | 0.0.0.0/0 | To connect from your laptop |
| HTTP | TCP      | 80   | 0.0.0.0/0 | To serve the web page       |


### Step 2.3 — Launch the Windows  Instance

Name: FinalLab-Windowsyour_name_here
AMI (OS): Windows Server 2019/2022 Base (Free tier eligible)
Instance Type: t2.micro
Virtual Network: FinalLab-VPC 172.16.99.0/24
Auto-assign public IP	

#### Create new security group
Security group name	FinalLab-Windows-SG
Add the following rule to the security group:

| Type | Protocol | Port | Source    | Why                           |
| ---- | -------- | ---- | --------- | ----------------------------- |
| RDP  | TCP      | 3389 | 0.0.0.0/0 | To connect via Remote Desktop |


## PART 3 — Connect to Your Virtual Machines
Points: 20 | Estimated time: 15 minutes

### Step 3.1 — Connect to the Linux VM via SSH
On Windows (using Windows Terminal or PowerShell):
```sh
ssh ubuntu@YOUR_LINUX_PUBLIC_IP
# You are connected when you see the Ubuntu prompt:
ubuntu@ip-10-0-1-xxx:~$
```

### Step 3.2 — Connect to the Windows VM via RDP

the RDP client in your PC: click on the Windows botton and type: remote desktop protocol

| Field    | Value                                   |
| -------- | --------------------------------------- |
| Username | Administrator                           |
| Password | The password you copied in preview step |

Accept the certificate warning and connect

✅ You are connected when you see the Windows Server desktop

## PART 4 — Configure the Linux Web Server
Points: 25 | Estimated time: 20 minutes

### Step 4.1 — Update the System
In your SSH terminal (connected to the Linux VM), run:

```sh
sudo apt update
# Wait for the update to finish.

# Install Apache2:

sudo apt install apache2 -y
# Wait for the installation to finish.

# Verify Apache2 is running:

sudo systemctl status apache2
# ✅ You should see: Active: active (running) in green
```

### Step 4.3 — Create Your Custom Web Page
💡 You will now use Vim — the text editor you practiced in Lab 057.

Navigate to the Apache web folder:

```sh
cd /var/www/html
# Open the default page with Vim:

sudo vim index.html
# Press i to enter Insert mode
```
> * Delete all existing content and replace it with the following.
> * Replace YOUR FULL NAME and YOUR COUNTRY with your real information:
```
<!DOCTYPE html>
<html>
  <head>
    <title>My Cloud Lab</title>
  </head>
  <body>
    <h1>Hello from the Cloud!</h1>
    <p>This page was created by: <strong>YOUR FULL NAME</strong></p>
    <p>Country: YOUR COUNTRY</p>
    <p>Server: Cloud_privider Linux (Ubuntu)</p>
    <p>Lab: Cloud Essentials Final Lab</p>
  </body>
</html>
```
* Press Esc to exit Insert mode
* Type :wq and press Enter to save and exit

### Step 4.4 — Verify the Page Locally
Still in the Linux terminal, run:

```sh
curl http://localhost
✅ You should see your HTML code printed in the terminal
```


## PART 5 — Access the Web Page from the Windows VM
Points: 15 | Estimated time: 10 minutes

### Step 5.1 — Find the Linux VM IP address


### Step 5.2 — Open the Web Page from Windows
* Go to your RDP session (Windows Server desktop)
* Open Internet Explorer or Microsoft Edge
* In the address bar, type:
```
http://172.16.99.xxx
(Replace 172.16.99.xxx with the actual private IP of your Linux VM)
```
Press Enter
✅ You should see your custom HTML page with your name on it

# FINAL SCREENSHOTS required: 
1. The Windows VM browser showing your custom web page with your name clearly visible. This is your proof of completion.
2. also open the cmd on the windows VM and show the output of the `ipconfig /all`
3. show both VM created on the portal you are using (show the security group names and Vnet name if posible)

## PART 6 — Cleanup
Complete ONLY after trainer confirms your submission
**Important:** Do not clean up until your trainer tells you to.
Deleting resources before grading = losing points.

### Step 6.1 — Terminate  Instances

#### Grading Rubric

| Score  | Grade             | Description                                             |
| ------ | ----------------- | ------------------------------------------------------- |
| 90–100 | Excellent         | All steps completed. All screenshots clear and correct. |
| 75–89  | Good              | Most steps completed. Minor missing screenshots.        |
| 60–74  | Satisfactory      | Core tasks done. Some steps incomplete or unclear.      |
| 40–59  | Needs Improvement | Partial completion. Key steps missing.                  |
| 0–39   | Incomplete        | Lab not completed or most missing.                      |


<!-- 

💡 Trainer Notes
| Note             | Detail                                                                                       |
| ---------------- | -------------------------------------------------------------------------------------------- |
| AMI availability | Confirm Windows Server 2022 is available in Free Tier for your AWS account                   |
| t2.micro limits  | Students should stay within Free Tier — monitor if shared accounts                           |
| RDP on Mac       | Students need Microsoft Remote Desktop from the App Store                                    |
| PuTTY users      | .ppk format needed — remind Windows students when creating the key pair                      |
| Common issue     | If browser doesn't load: check Security Group port 80 is open on Linux SG                    |
| Common issue     | If RDP fails: wait 3–5 minutes after instance shows "Running" — Windows takes longer to boot |
| Final screenshot | Screenshot #13 is the most important — it proves the full architecture works end-to-end      | -->

