
# # Security Group for networking if needed (allow ports for PostgreSQL, Redis, etc.)
# resource "aws_security_group" "app_security_group" {
#   name        = "${var.project_name}-${local.environment_suffix}-sg"
#   description = "Allow inbound traffic for the application"
#   vpc_id      = "vpc-id-here" # If using VPC

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 443
#     to_port     = 443
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = local.common_tags
# }
