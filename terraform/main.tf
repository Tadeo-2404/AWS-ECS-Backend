terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.93.0"
    }
  }
}

module "vpc" {
  source = "./modules/vpc"
  aws_az = var.aws_az
}

module "security_group" {
  source     = "./modules/security_group"
  aws_region = var.aws_region
  aws_vpc_id = module.vpc.vpc_id
}
