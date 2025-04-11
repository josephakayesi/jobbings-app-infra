resource "aws_ecr_repository" "jobbings_app_ui" {
  name                 = "${var.project_name}-ui-${local.environment_suffix}"
  image_tag_mutability = "MUTABLE" # or "IMMUTABLE" depending on your preference

  encryption_configuration {
    encryption_type = "AES256" # or "KMS" for custom key
  }

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = merge(local.common_tags, {
    Service         = "jobbings-ui"
    Component       = "ui"
    TerraformModule = "ecr"
  })
}
