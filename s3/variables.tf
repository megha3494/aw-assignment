#AWS Config
variable "aws_access_key" {
default = "XXXXXXXXXXXXXXXXXXXXXXX"
}
variable "aws_secret_key" {
default = "XXXXXXXXXXXXXXXXXXXXXXXX"
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