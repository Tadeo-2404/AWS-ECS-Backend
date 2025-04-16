variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "execution_role_arn" {
  description = "execution_role_arn"
  type        = string
}

variable "aws_ecr_repository_url" {
  description = "aws_ecr_repository"
  type        = string
  default     = "public.ecr.aws/nginx/nginx:stable-perl"
}

variable "aws_security_group" {
  description = "aws_security_group"
  type        = string
}

variable "aws_subnet" {
  description = "aws_subnet"
  type        = string
}