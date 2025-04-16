output "aws_iam_role_name" {
  value = aws_iam_role.ecs_role.name
}

output "aws_iam_role_arn" {
  value = aws_iam_role.ecs_role.arn
}
