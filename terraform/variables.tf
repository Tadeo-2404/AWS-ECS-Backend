variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "aws_az" {
  description = "AWS AZ"
  type        = string
  default     = "us-east-1a"
}

variable "aws_ecr_repository_url" {
  description = "aws_ecr_repository"
  type        = string
  default     = "public.ecr.aws/nginx/nginx:stable-perl"
}