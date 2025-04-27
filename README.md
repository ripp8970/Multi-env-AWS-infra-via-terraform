# Multi-Environment AWS Infrastructure via Terraform

[![Terraform Version](https://img.shields.io/badge/terraform-~>1.x-blue.svg)](https://www.terraform.io) 

## Overview

This repository contains Terraform code to provision and manage AWS infrastructure across multiple environments (i.e., development, staging, production). It aims to provide a reusable, modular, and consistent way to define cloud resources.

## Features

* **Multi-Environment Support:** Easily deploy infrastructure to different environments using Terraform workspaces or directory structures.
* **Modular Design:** Infrastructure components are broken down into reusable modules.
* **Parameterization:** Environment-specific configurations are managed separately.

## Prerequisites

Ensure you have the following installed and configured:

* **Terraform:** Latest version.
* **AWS Account:** An active AWS account.
* **AWS Credentials:** Configured AWS credentials(with administration access) for Terraform to use
* **AWS CLI:** Installed on the machine

## Directory Structure

.

├── environments/       # Environment-specific configurations

│   ├── dev/

│   │   └── terraform.tf vars

│   ├── stg/

│   │   └── terraform.tf vars

│   └── prod/│       └── terraform.tf vars

├── modules/            # Reusable infrastructure modules

│   ├── vpc/

│   │   ├── main.tf

│   │   ├── variables.tf

│   │   └── outputs.tf

│   ├── ec2/

│   │   └── ...

│   └── ...

├── main.tf             # Root module configuration

├── variables.tf        # Root module variable definitions

├── outputs.tf          # Root module outputs

├── backend.tf          # Terraform backend configuration (e.g., S3)

├── providers.tf        # Provider configuration (AWS)

└── README.md           # This file
## Setup

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/ripp8970/Multi-env-AWS-infra-via-terraform.git
    cd Multi-env-AWS-infra-via-terraform
    ```

2.  **Configure Backend:**
    * Update your S3 bucket details for storing Terraform state.
    * Ensure the S3 bucket and DynamoDB table exists.

3.  **Configure Environment Variables (Optional but Recommended):**
    * Set `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, and `AWS_REGION` environment variables or use an AWS profile.

## Usage

This project uses [Terraform Workspaces / Separate Directories] to manage different environments.


1.  **Navigate to the environment directory**


2.  **Initialize Terraform:**
    ```bash
    terraform init
    ```

3.  **Check if the Workspace is created**


4.  **Review the Plan:**
    ```bash
    terraform plan
    ```

5.  **Apply the Configuration:**
    ```bash
    terraform apply
    ```


**Destroying Infrastructure**

To tear down the infrastructure for a specific environment:

```bash
terraform destroy # If using separate directories
```

WARNING: This command will destroy all resources managed by Terraform in the selected environment/directory. Use with caution.
