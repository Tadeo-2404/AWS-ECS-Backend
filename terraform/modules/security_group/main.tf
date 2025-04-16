# modules/security_group/main.tf

//SECURITY GROUP DEFINITION
resource "aws_security_group" "ecs_sg" {
  name        = local.aws_security_group_name
  description = local.aws_security_group_description
  vpc_id      = var.aws_vpc_id

  tags = {
    Name = local.aws_security_group_tag_name
  }
}

//INGRESS FOR SSH
resource "aws_vpc_security_group_ingress_rule" "ecs_sg_ssh" {
  security_group_id = aws_security_group.ecs_sg.id
  cidr_ipv4         = var.aws_vpc_cidr_block
  from_port         = local.aws_security_group_ingress_ssh_from_port
  to_port           = local.aws_security_group_ingress_ssh_to_port
  ip_protocol       = local.aws_security_group_ingress_ssh_protocol
}

//INGRESS FOR HTTP
resource "aws_vpc_security_group_ingress_rule" "ecs_sg_http" {
  security_group_id = aws_security_group.ecs_sg.id
  cidr_ipv4         = var.aws_vpc_cidr_block
  from_port         = local.aws_security_group_ingress_http_from_port
  to_port           = local.aws_security_group_ingress_http_to_port
  ip_protocol       = local.aws_security_group_ingress_http_protocol
}

//INGRESS FOR HTTPS
resource "aws_vpc_security_group_ingress_rule" "ecs_sg_https" {
  security_group_id = aws_security_group.ecs_sg.id
  cidr_ipv4         = var.aws_vpc_cidr_block
  from_port         = local.aws_security_group_ingress_https_from_port
  to_port           = local.aws_security_group_ingress_https_to_port
  ip_protocol       = local.aws_security_group_ingress_https_protocol
}

resource "aws_vpc_security_group_egress_rule" "ecs_sg_egress" {
  security_group_id = aws_security_group.ecs_sg.id
  cidr_ipv4         = local.aws_security_group_egress_cidr
  ip_protocol       = local.aws_security_group_egress_protocol
}