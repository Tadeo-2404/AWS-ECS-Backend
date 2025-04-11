//AWS ECS SERVICE
output "aws_ecs_service_name" {
  value = aws_ecs_service.ecs-service.name
}

output "aws_ecs_service_cluster" {
  value = aws_ecs_service.ecs-service.cluster
}

output "aws_ecs_service_id" {
  value = aws_ecs_service.ecs-service.id
}

//AWS CLUSTER NAME
output "aws_ecs_cluster_name" {
  value = aws_ecs_cluster.ecs-cluster.name
}

output "aws_ecs_cluster_id" {
  value = aws_ecs_cluster.ecs-cluster.id
}

output "aws_ecs_cluster_setting" {
  value = aws_ecs_cluster.ecs-cluster.setting
}

//AWS TASK
output "aws_ecs_task_family" {
  value = aws_ecs_task_definition.ecs-task.family
}

output "aws_ecs_task_id" {
  value = aws_ecs_task_definition.ecs-task.id
}