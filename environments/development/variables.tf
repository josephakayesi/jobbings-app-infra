# Generate the first letter of the environment name for suffix
locals {
  environment_suffix = substr(var.environment, 0, 1)
  common_tags = {
    Project       = "jobbings-app-${local.environment_suffix}"
    "Environment" = var.environment
    "ManagedBy"   = "Terraform"
    "Owner"       = "tech@jobbings.io"
    "CreatedBy"   = "Terraform"
    "Team"        = "DevOps"
  }
}


# Define environment-specific variables
variable "project_name" {
  default = "jobbings-app-project" # Project name without environment suffix
}

variable "environment" {
  default = "development" # Options: "development", "staging", "production"
}
