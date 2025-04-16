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

module "iam" {
  source = "./modules/iam"
}

module "ecr" {
  source = "./modules/ecr"
}

module "ecs" {
  source                 = "./modules/ecs"
  aws_region             = var.aws_region
  aws_security_group     = module.security_group.ecs_sg_id
  aws_subnet             = module.vpc.public_subnet_id
  aws_ecr_repository_url = var.aws_ecr_repository_url
  execution_role_arn     = module.iam.aws_iam_role_arn
  depends_on = [module.ecr]
}