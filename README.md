# Terraform AWS EC2 Setup

Use this project to allocate an AWS EC2 instance programmatically.

## Configurations

1. AMI: Ubuntu Server 20.04 LTS (ami-0851b76e8b1bce90b) (free tier eligible)
2. Instance Type: t2.micro (free tier eligible)
3. Security Group inbound rules will allow access to port 22 (SSH), 443 (HTTPS), 80 (HTTP) from anywhere

These configurations can be edited from `main.tf` file.

## Prerequisites:

1. [Terraform](https://www.terraform.io/downloads)
2. [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
3. [AWS Account and Security Credentials](https://console.aws.amazon.com/console/home)

## Steps to run:

1. Clone the repository 
```
git clone https://github.com/RajatSablok/terraform-aws-ec2-setup.git
```
2. Configure AWS CLI 
```
aws configure
```
3. Create new AWS Key Pair (PEM) file
```
aws ec2 create-key-pair --key-name MyKeyPair --query 'KeyMaterial' --output text > MyKeyPair.pem
```
4. Initialize Terraform project
```
terraform init
```
5. Edit `variables.tf` file to enter name of the EC2 instance and PEM file that you created
6. Apply the changes (this will allocate the EC2 instance)
```
terraform apply
```

### Note
> Use `terraform destroy` to terminate the EC2 instance and the related security group.
