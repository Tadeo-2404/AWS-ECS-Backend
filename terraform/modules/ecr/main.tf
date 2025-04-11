resource "aws_ecr_repository" "ecr_repository" {
  name                 = local.ecr_repository_name
  image_tag_mutability = local.ecr_repository_image_tag_mutability

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "ecr_repository"
  }
}