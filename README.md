# IAI - AWS Infrastructure Setup

This repository contains the following:
1. Terraform scripts to setup the overall infrastructure on AWS.
2. Ansible playbook to set up individual apps.


## Using Terraform

1. Create a `credentials` file in the `terraform` folder that has the same format as the `credentials.example` file. Add the access key id and secret key of the account you want to set up the infrastructure in to the `credentials` file.
2. Run terraform from within the `terraform` folder: `terraform init`, `terraform plan` and `terraform apply`.
