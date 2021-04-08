resource "aws_instance" "ec2_creation" {
  ami                    = var.ami_id #"ami-221ea342" #id of desired AMI
  instance_type          = var.instance_type #"m3.medium"
  subnet_id              = var.subnet_id
  #vpc_security_group_ids = var.vpc_security_group_ids # list
  tags = {
    "Name" = "${var.env}_instance"
  }
}