locals {
  aws_vpc_name                  = "ecs_vpc"
  aws_public_subnet_name        = "ecs_public_subnet"
  aws_private_subnet_name       = "ecs_private_subnet"
  aws_vpc_cidr_block            = "10.0.0.0/16"
  aws_public_subnet_cidr_block  = "10.0.1.0/24"
  aws_private_subnet_cidr_block = "10.0.2.0/24"
  //AWS INTERNET GATEWAY
  aws_internet_gateway_name = "ecs_ig"
  //AWS ROUTE TABLE
  aws_route_table_public_name  = "public_route_table"
  aws_route_table_public_cidr  = "0.0.0.0/0"
  aws_public_route_cidr        = "0.0.0.0/0"
  aws_route_table_private_name = "private_route_table"
  aws_route_table_private_cidr = "0.0.0.0/0"
  aws_private_route_cidr       = "0.0.0.0/0"
  //AWS NETWORK ACL
  aws_network_acl_tag               = "ecs_network_acl"
  aws_network_acl_tcp_protocol      = "tcp"
  aws_network_acl_egress_protocol   = "-1"
  aws_network_acl_egress_rule_n     = 200
  aws_network_acl_egress_from_port  = 0
  aws_network_acl_egress_to_port    = 0
  aws_network_acl_egress_action     = "allow"
  aws_network_acl_egress_cidr_block = "0.0.0.0/0"
  //AWS NETWORK ACL INGRESS icmp
  aws_network_acl_ingress_icmp_protocol   = "icmp"
  aws_network_acl_ingress_icmp_rule_n     = 100
  aws_network_acl_ingress_icmp_from_port  = 0
  aws_network_acl_ingress_icmp_to_port    = 0
  aws_network_acl_ingress_icmp_action     = "allow"
  aws_network_acl_ingress_icmp_cidr_block = "0.0.0.0/0"
  //AWS NETWORK ACL INGRESS SSH
  aws_network_acl_ingress_ssh_rule_n     = 110
  aws_network_acl_ingress_ssh_from_port  = 22
  aws_network_acl_ingress_ssh_to_port    = 22
  aws_network_acl_ingress_ssh_action     = "allow"
  aws_network_acl_ingress_ssh_cidr_block = "0.0.0.0/0"
  //AWS NETWORK ACL INGRESS HTTP
  aws_network_acl_ingress_http_protocol   = "tcp"
  aws_network_acl_ingress_http_rule_n     = 120
  aws_network_acl_ingress_http_from_port  = 80
  aws_network_acl_ingress_http_to_port    = 80
  aws_network_acl_ingress_http_action     = "allow"
  aws_network_acl_ingress_http_cidr_block = "0.0.0.0/0"
  //AWS NETWORK ACL INGRESS HTTPS
  aws_network_acl_ingress_https_protocol   = "tcp"
  aws_network_acl_ingress_https_rule_n     = 130
  aws_network_acl_ingress_https_from_port  = 443
  aws_network_acl_ingress_https_to_port    = 443
  aws_network_acl_ingress_https_action     = "allow"
  aws_network_acl_ingress_https_cidr_block = "0.0.0.0/0"
}