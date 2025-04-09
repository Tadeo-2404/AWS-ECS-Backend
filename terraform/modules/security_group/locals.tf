locals {
  //AWS SG
  aws_security_group_name        = "ecs_sg"
  aws_security_group_description = "Allow TLS inbound traffic and all outbound traffic"
  aws_security_group_tag_name    = "ecs_sg"
  //AWS VPC SG
  //AWS SG INGRESS SSH
  aws_security_group_ingress_ssh_cdir      = "0.0.0.0/0"
  aws_security_group_ingress_ssh_from_port = 22
  aws_security_group_ingress_ssh_to_port   = 22
  aws_security_group_ingress_ssh_protocol  = "tcp"
  //AWS SG INGRESS icmp
  aws_security_group_ingress_icmp_cdir      = "0.0.0.0/0"
  aws_security_group_ingress_icmp_from_port = -1
  aws_security_group_ingress_icmp_to_port   = -1
  aws_security_group_ingress_icmp_protocol  = "icmp"
  //AWS SG EGRESS
  aws_security_group_egress_cidr      = "0.0.0.0/0"
  aws_security_group_egress_from_port = 0
  aws_security_group_egress_to_port   = 0
  aws_security_group_egress_protocol  = "-1"
}