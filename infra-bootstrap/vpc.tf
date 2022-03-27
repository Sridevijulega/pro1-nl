data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  
  name = var.vpc_name
  cidr = var.vpc_cidr
  
  azs                  = data.aws_availability_zones.available.names
  private_subnets      = var.vpc_private_subnets
  public_subnets       = var.vpc_public_subnets
  enable_dns_hostnames = true
  enable_nat_gateway   = true

  tags = {
    Terraform = "true"
  }
}

data "aws_subnet_ids" "vpc" {
  vpc_id = module.vpc.vpc_id
}