# aw-assignment

Task 1:
This repo contains the terraform code for complete private s3 bucket cretaion.
S3 bucket creation code is in s3 folder

it contains 3 resources
1. to create the bucket
2. to make it completly private 
3. to add access polices 

To create the s3 bucket, go to s3 folder
in variables.tf add the AWS access key and Secret ID 

Then run 
terraform init
terraform plan
terraform apply



Task 2 : 

There are 2 folders stack and modules 

Modules folder contains generic modules for EC2 and VPC creation. 
Modules are called friom stack folder main.tf file

To create ec2 and VPC, go to stack 
in variables.tf add the AWS access key and Secret ID 

Then run 
terraform init
terraform plan
terraform apply
