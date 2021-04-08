module "create_vpc" {
  source     = "../modules/vpc"
  env        = var.environment
  subnet     = var.subnet
  cidr_block = var.cidr_block
}

module "create_ec2" {
    source    = "./modules/aws_ec2"
    ami_id    = var.ami_id
    instance_type = var.instance_type
    subnet_id = module.create_vpc.subnet_id
#    vpc_security_group_ids = module.create_vpc.aws_default_route_table_id
    env       = var.environment
    depends_on = [
      module.create_vpc
    ]
}