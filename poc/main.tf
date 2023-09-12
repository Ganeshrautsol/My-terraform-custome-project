module "aws_poc_vpc" {
  source = "../modules/vpc"
}

module "aws_security_group" {
  source = "../modules/sg"
  vpc_id = module.aws_poc_vpc.vpc_id
}

module "aws_subnet" {
    source = "../modules/vpc"
  }

module "aws_instance" {
  source = "../modules/ec2"
 # instance_type = "t2.micro"
  sg_id = module.aws_security_group.sg_id
  subnets = module.aws_subnet.subnet_ids[*]
  ec2_names = ["poc-ec2"]
}