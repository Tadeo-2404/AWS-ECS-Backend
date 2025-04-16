locals {
  //AWS SG
  aws_security_group_name        = "ecs_sg"
  aws_security_group_description = "Allow TLS inbound traffic and all outbound traffic"
  aws_security_group_tag_name    = "ecs_sg"
  //AWS VPC SG
  //AWS SG INGRESS HTPP
  aws_security_group_ingress_http_cdir      = "0.0.0.0/0"
  aws_security_group_ingress_http_from_port = 80
  aws_security_group_ingress_http_to_port   = 80
  aws_security_group_ingress_http_protocol  = "tcp"
  //AWS SG INGRESS SSH
  aws_security_group_ingress_ssh_cdir      = "0.0.0.0/0"
  aws_security_group_ingress_ssh_from_port = 22
  aws_security_group_ingress_ssh_to_port   = 22
  aws_security_group_ingress_ssh_protocol  = "tcp"
  //AWS SG INGRESS HTTPS
  aws_security_group_ingress_https_cdir      = "0.0.0.0/0"
  aws_security_group_ingress_https_from_port = 443
  aws_security_group_ingress_https_to_port   = 443
  aws_security_group_ingress_https_protocol  = "tcp"
  //AWS SG EGRESS
  aws_security_group_egress_cidr      = "0.0.0.0/0"
  aws_security_group_egress_from_port = 0
  aws_security_group_egress_to_port   = 0
  aws_security_group_egress_protocol  = "-1"
}