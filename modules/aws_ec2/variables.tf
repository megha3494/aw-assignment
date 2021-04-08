variable "ami_id" {
  type = string 
  default = "ami-096fda3c22c1c990a"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "subnet_id" {

}

# variable "vpc_security_group_ids" {
  
# }

variable "env" {
  type = string
  default = "dev"
}