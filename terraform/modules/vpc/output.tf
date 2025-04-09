output "vpc_id" {
  value = aws_vpc.ecs_vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.ecs_public_subnet.id
}

output "private_subnet_id" {
  value = aws_subnet.ecs_private_subnet.id
}