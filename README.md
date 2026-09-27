# Terraform AWS DevOps Infrastructure Project

## 📌 Project Overview

This project demonstrates how to provision and manage AWS infrastructure using **Terraform as Infrastructure as Code (IaC)**.

The infrastructure includes a secure AWS VPC architecture with a public web server and a private MySQL RDS database. Terraform remote state is stored securely in Amazon S3 with versioning and encryption enabled.

The project is designed to demonstrate practical DevOps and Cloud Engineering skills including:

- Infrastructure as Code
- AWS networking
- EC2 provisioning
- RDS database deployment
- Security Groups
- Terraform remote state
- Git and GitHub
- Infrastructure validation and testing

---

## 🏗️ Architecture

```text
                         Internet
                            |
                            |
                   Internet Gateway
                            |
                            |
                +-----------------------+
                |       AWS VPC         |
                |     10.0.0.0/16       |
                |                       |
                |  Public Subnet        |
                |  10.0.1.0/24          |
                |  ap-south-1a          |
                |                       |
                |   +---------------+   |
                |   | EC2 Instance  |   |
                |   | Amazon Linux  |   |
                |   | Nginx         |   |
                |   +---------------+   |
                |          |            |
                |          |            |
                |          | MySQL      |
                |          | :3306      |
                |          v            |
                |  Private Subnets      |
                |                       |
                |  10.0.2.0/24          |
                |  ap-south-1b          |
                |       \               |
                |        \              |
                |  10.0.3.0/24          |
                |  ap-south-1a          |
                |        |              |
                |        v              |
                |   +-------------+     |
                |   | RDS MySQL   |     |
                |   | Private     |     |
                |   +-------------+     |
                |                       |
                +-----------------------+

                  Terraform State
                         |
                         v
                 +---------------+
                 | Amazon S3     |
                 | Remote State  |
                 | Versioning    |
                 | AES-256       |
                 +---------------+
