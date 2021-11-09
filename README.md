# How to create resources in two different regions with a module

This repository shows you how to create two resources in different regions with a single module

This specific example does the following: 
- uses the local module in the repository ```modules/instance```
- creates an EC2 instance named app_server1 in us-west-1 which is the default region
- creates an EC2 instance named app_server2 in us-west-2 which uses a provider alias with the module

# Prerequisites

## Install terraform  
See the following documentation [How to install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)

## AWS cli
Install AWS cli [See documentation](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

# How to

1. Clone the repository to your local machine
```
git clone https://github.com/munnep/module_regions.git
```
2. Change your directory
```
cd module_regions
```
3. Terraform initialize
```
terraform init
```
4. Terraform plan
```
terraform plan
```
5. Terraform apply
```
terraform apply
```
6. Sample output
```
...
...
...
module.app_server2.aws_instance.app_server: Creation complete after 40s [id=i-071b45deb8bcd1def]
module.app_server1.aws_instance.app_server: Creation complete after 40s [id=i-0a590c3294b85fb82]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
...
...
...
```
7. Destroy the resources
```
terraform destroy
```