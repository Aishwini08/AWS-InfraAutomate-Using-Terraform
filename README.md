# AWS Infrastructure Automation Using Terraform

## Overview
This project automates the deployment of a highly available, scalable, and secure AWS infrastructure using **Terraform**. The infrastructure is designed to host containerized applications with **ECS**, an **RDS PostgreSQL database**, and an **Application Load Balancer (ALB)**.

---

## Architecture

- **VPC and Networking**
  - Custom VPC: `10.0.0.0/16`
  - Public and private subnets across two Availability Zones
  - Internet Gateway for public subnet access
  - NAT Gateway for secure outbound internet access from private subnets

- **ECS Application Hosting**
  - ECS Cluster with EC2 launch type in private subnets
  - Auto Scaling Group to dynamically scale ECS instances
  - ECS Task Definition running Nginx container
  - IAM roles and Security Groups configured for least privilege

- **Load Balancing**
  - Application Load Balancer (ALB) in public subnets
  - Target group and listener routing traffic to ECS tasks
  - Security groups restrict access to only necessary ports

- **Database**
  - RDS PostgreSQL instance in private subnets
  - Security group allows access only from ECS containers
  - Multi-AZ deployment, automated backups, monitoring enabled

- **Monitoring & Logging**
  - ECS Task logging via CloudWatch
  - VPC Flow Logs for network monitoring

---

## Features
- Fully automated infrastructure using Terraform
- Scalable ECS cluster with Auto Scaling and Capacity Provider
- Secure networking with public/private subnets, IGW, and NAT Gateway
- Load balancing with ALB and health checks
- Logging and monitoring using AWS CloudWatch

---

## Prerequisites
- Terraform >= 1.5.0
- AWS CLI configured with appropriate IAM permissions
- AWS Account with VPC, ECS, RDS, and IAM access

---

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/aws-ecs-rds-terraform.git
   cd aws-ecs-rds-terraform

2. Initialize Terraform ----> terraform init

3. Preview the deployment plan ------> terraform plan

4. Apply the infrastructure ------> terraform apply


5. Access the deployed application via the ALB DNS provided in the outputs.
   
Folder Structure
aws-ecs-rds-terraform/
│
├── main.tf              # Main Terraform configurations
├── variables.tf         # All input variables
├── outputs.tf           # Outputs for ALB DNS, VPC IDs, etc.
├── modules/             # Terraform modules (ECS, VPC, RDS)
└── README.md
