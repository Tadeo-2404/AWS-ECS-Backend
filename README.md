# AWS Elastic Container Registry & ECS Integration with Terraform and Spring Boot

## Project Overview

This project demonstrates how to deploy a Spring Boot backend application to AWS using containerization and Infrastructure as Code (IaC). It leverages **Terraform** for provisioning AWS resources, and integrates key AWS services such as **ECS** for container orchestration, **ECR** (or Docker Hub) for container image storage, and **VPC** with public and private subnets for secure network segmentation. Additionally, **Jenkins** is incorporated to automate the CI/CD pipeline, ensuring that Docker images are built and deployed seamlessly.

---

## Architecture Overview

### Backend Service

- **Spring Boot Application**  
  A core Spring Boot application that serves as the backend API, designed for scalability and integration with other services.

- **PostgreSQL Database**  
  A PostgreSQL database acts as the primary data store. It can be provisioned in AWS (via RDS) or used locally for development.

- **Containerization & Local Development**  
  - **Docker**: The Spring Boot application is containerized to ensure consistency between development and production environments.
  - **Docker Compose**: Used during local development to orchestrate both the Spring Boot application and the PostgreSQL database.

- **CI/CD with Jenkins**  
  Jenkins automates the following steps:
  - Building the Docker image from the Spring Boot source code.
  - Running tests to ensure application quality.
  - Pushing the resulting Docker image to a container registry (Docker Hub or AWS ECR).

### Infrastructure Provisioned with Terraform

- **AWS ECS (Elastic Container Service)**  
  Manages the deployment of the containerized Spring Boot application across a scalable and resilient AWS environment.

- **AWS VPC (Virtual Private Cloud)**  
  Provides network isolation and fine-grained control over traffic flows:
  
  - **Public Subnets**:  
    Host internet-facing components, such as an Application Load Balancer (ALB) if used.
  
  - **Private Subnets**:  
    Securely house ECS tasks and the PostgreSQL database, minimizing exposure to the internet.

  - **Internet Gateway & NAT Gateway**:  
    - **Internet Gateway**: Enables resources in the public subnet to connect to the internet.
    - **NAT Gateway**: Provides controlled internet access for resources within the private subnet.
  
  - **Route Tables**:  
    - Public subnet traffic is directed through the Internet Gateway.
    - Private subnet traffic is routed via the NAT Gateway for external communications.

- **Security Groups**  
  Configured to ensure that only TLS-secured traffic is allowed where necessary, thus enforcing strong network security.

- **Terraform Modules**  
  Used to standardize and manage AWS resource provisioning. Modules enable:
  - Reusability and separation of infrastructure components.
  - Parameterization for different environments (e.g., development, staging, production).
  - Clear management of network, compute, and security configurations.

---

## How It Works

1. **Development**  
   - Develop the Spring Boot application locally using Docker and Docker Compose.
   - Use PostgreSQL locally to simulate production conditions.

2. **CI/CD Pipeline**  
   - Jenkins automates the process:
     - **Build**: Jenkins builds the Docker image.
     - **Test**: Application tests are executed.
     - **Push**: The Docker image is pushed to Docker Hub or AWS ECR.

3. **Infrastructure Provisioning with Terraform**  
   - Terraform scripts create and manage AWS resources including ECS clusters, VPC configurations, subnets, and security groups.
   - The Terraform configuration is modular, allowing for easy replication of environments.

4. **Deployment**  
   - The containerized Spring Boot application is deployed to AWS ECS.
   - ECS tasks run in the private subnet for security, while a public-facing component (e.g., ALB) handles incoming requests.

---

## Getting Started

### Prerequisites

- AWS account with permissions for ECS, VPC, ECR, etc.
- Terraform installed on your local development machine.
- Docker and Docker Compose installed.
- Jenkins setup (if not using a managed CI/CD platform).

### Steps

1. **Clone the Repository**

   ```bash
   git clone https://github.com/Tadeo-2404/AWS-ECS-Backend.git
   cd AWS-ECS-Backend
