#AWS Config
variable "aws_access_key" {
default = "AKIAXFIVYGA3XMD262WG"
}
variable "aws_secret_key" {
default = "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"
}
variable "aws_region" {
default = "us-east-1"
}

#S3 bucket variable 
variable "bucket_name" {
    type = string
    default = "aw-assignment"
}
variable "environment" {
    type = string
    default = "dev"
}
variable "acl_type" {
    type = string
    default = "private"
}

variable "subnet" {
    default = "10.0.0.0/24"
  
}
variable "cidr_block" {
  default = "10.0.0.0/16"
}

#ec2 vars
variable "ami_id" {
    default = "ami-096fda3c22c1c990a"
  
}
variable "instance_type" {
  default = "t2.micro"
}
