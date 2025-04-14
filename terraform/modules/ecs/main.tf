resource "aws_ecs_cluster" "ecs-cluster" {
  name = local.ecs_cluster_name

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

resource "aws_ecs_service" "ecs-service" {
  name            = local.ecs_service_name
  cluster         = aws_ecs_cluster.ecs-cluster.id
  task_definition = aws_ecs_task_definition.ecs-task.arn
  launch_type     = local.ecs_launch_type

  network_configuration {
    subnets          = [var.aws_subnet]
    security_groups  = [var.aws_security_group]
    assign_public_ip = true
  }

  desired_count = local.ecs_desired_count
}

resource "aws_ecs_task_definition" "ecs-task" {
  family                   = local.family
  network_mode             = local.network_mode
  requires_compatibilities = local.requires_compatibilities
  cpu                      = local.cpu
  memory                   = local.memory
  execution_role_arn       = var.execution_role_arn

  container_definitions = jsonencode([
    {
      name      = "my-app-container"
      image     = "${var.aws_ecr_repository}:latest"
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
  ])
}
