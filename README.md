# Guestlist App

This project is a simple web application for managing a guest list, built with PHP and hosted on an Apache server. The application uses AWS DynamoDB as a database and is deployed using Docker. Infrastructure provisioning is managed with Terraform.

## Features

- User authentication with a simple login form
- Display a list of guests retrieved from DynamoDB
- Secure handling of guest data
- Dockerized for easy deployment

## Prerequisites

Before you begin, ensure you have the following installed:

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [AWS CLI](https://aws.amazon.com/cli/)
- [Terraform](https://www.terraform.io/)

## Setup

### AWS Configuration

1. **AWS CLI Configuration**

   Configure AWS CLI with your credentials:

   ```bash
    aws configure

2.DynamoDB Table

Ensure you have a DynamoDB table set up with the necessary attributes (e.g., Name, Email, Country). You can create this table manually via the AWS Management Console or automate it using Terraform (as described below).


3.Terraform Setup
Initialize Terraform

Navigate to the terraform directory and initialize Terraform:

bash

terraform init
terraform plan
terraform validate
Apply Terraform Configuration

Apply the Terraform configuration to set up the necessary AWS infrastructure:

terraform apply
This command will create resources defined in your Terraform configuration files. Review the plan and type yes to proceed.

