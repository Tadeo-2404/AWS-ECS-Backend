variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "aws_vpc_id" {
  description = "VPC ID for Security group"
  type        = string
}

variable "aws_vpc_cidr_block" {
  description = "VPC CIDR blokc for Security Group"
  type        = string
  default     = "10.0.0.0/16"
}