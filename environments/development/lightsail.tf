
# # Create Lightsail container service for the main application
# resource "aws_lightsail_container_service" "main_service" {
#   name            = "${var.project_name}-${local.environment_suffix}-service"
#   power           = "nano" # Change as per your needs (nano, micro, medium)
#   scale           = 1      # Change based on initial service scale (adjust for prod)
#   is_public       = true
#   deployment_mode = "RUN_ON_PUBLIC"
#   tags            = local.common_tags

#   container {
#     name  = "main-service"
#     image = "your-repo/main-service:latest"
#     ports = ["8080"]

#     log_configuration {
#       log_driver = "awslogs"
#       options = {
#         "awslogs-group"  = "/aws/lightsail/${var.project_name}-${local.environment_suffix}-logs"
#         "awslogs-region" = "us-east-1"
#         "awslogs-stream" = "main-service-log-stream"
#       }
#     }
#   }
# }

# # Create Lightsail container service for the worker application
# resource "aws_lightsail_container_service" "worker_service" {
#   name            = "${var.project_name}-${local.environment_suffix}-service"
#   power           = "nano" # Change as per your needs (nano, micro, medium)
#   scale           = 1      # Change based on initial service scale (adjust for prod)
#   is_public       = true
#   deployment_mode = "RUN_ON_PUBLIC"
#   tags            = local.common_tags

#   container {
#     name  = "main-service"
#     image = "your-repo/main-service:latest"
#     ports = ["8080"]

#     log_configuration {
#       log_driver = "awslogs"
#       options = {
#         "awslogs-group"  = "/aws/lightsail/${var.project_name}-${local.environment_suffix}-logs"
#         "awslogs-region" = "us-east-1"
#         "awslogs-stream" = "worker-service-log-stream"
#       }
#     }
#   }
# }


# # Create Redis instance in Lightsail (for caching)
# resource "aws_lightsail_instance" "redis" {
#   name              = "${var.project_name}-${local.environment_suffix}-redis"
#   availability_zone = "us-east-1a" # Adjust AZ as needed
#   blueprint_id      = "redis_6_0"  # Ensure Redis version compatibility
#   bundle_id         = "nano_2_0"   # Adjust bundle size if needed
#   tags              = local.common_tags
# }

# # Create PostgreSQL instance in Lightsail (for database)
# resource "aws_lightsail_instance" "postgres" {
#   name              = "${var.project_name}-${local.environment_suffix}-postgres"
#   availability_zone = "us-east-1a"
#   blueprint_id      = "postgresql_13_4" # Adjust PostgreSQL version if needed
#   bundle_id         = "nano_2_0"        # Adjust bundle size if needed
#   tags              = local.common_tags
# }

# # Create NATS instance in Lightsail (for pub/sub messaging)
# resource "aws_lightsail_instance" "nats" {
#   name              = "${var.project_name}-${local.environment_suffix}-nats"
#   availability_zone = "us-east-1a"
#   blueprint_id      = "nats_2_0" # Assuming NATS version
#   bundle_id         = "nano_2_0" # Adjust as needed
#   tags              = local.common_tags
# }

# # Example of adding tags to a Lightsail container service deployment
# resource "aws_lightsail_container_service_deployment" "main_service_deployment" {
#   container_service_name = aws_lightsail_container_service.main_service.name
#   containers {
#     name  = aws_lightsail_container_service.main_service.name
#     image = "your-repo/main-service:latest"
#     ports = ["8080"]
#   }
#   tags = local.common_tags
# }
