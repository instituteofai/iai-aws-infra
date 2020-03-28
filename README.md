# IAI - AWS Infrastructure Setup

This repository contains the following:

1. Terraform scripts to setup the overall infrastructure on AWS.
2. Ansible playbook to set up individual apps.


## Using Terraform

1. Create a `credentials` file in the `terraform` folder that has the same format as the `credentials.example` file. Add the access key id and secret key of the account you want to set up the infrastructure in to the `credentials` file.

2. Run terraform from within the `terraform` folder: `terraform init`, `terraform plan` and `terraform apply`.

## Using Ansible

1. Update the `ansible/hosts` file with the IP address or host name of the newly created EC2 instance using Terraform.

2. Update the `hosts` property in `ansible/playbook.yml` to use the host you just added in the previous step.

3. Ensure that you have an SSH key pair set up to access the EC2 instance. Update the script `run_playbook.sh` with your private key file name after the `--key-file` property.

4. Execute the script `run_playbook.sh` to run the playbook against the EC2 instance.

### Running the ansible playbook locally

To run the playbook locally against a Vagrant box, update the `ansible/playbook.yml` playbook to use the host `default` and execute the following command:
```shell
$ ansible-playbook ansible/playbook.yml -i ansible/hosts
```

The `default` host has all the necessary parameters to connect to the Vagrant box created using the Vagrantfile in this repository.

Note: you might have to update the path to the SSH key required to connect to the Vagrant box in the `ansible/hosts` file.
