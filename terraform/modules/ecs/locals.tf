locals {
  //ECS CLUSTER
  ecs_cluster_name = "ecs-cluster"
  //ECS TASK
  family                   = "ecs-task"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = 256
  memory                   = 512
  //ECS SERVICE
  ecs_service_name  = "ecs-service"
  ecs_launch_type   = "FARGATE"
  ecs_desired_count = 1
}