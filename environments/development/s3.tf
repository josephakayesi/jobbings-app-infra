
# # S3 Bucket for storing static files
# resource "aws_s3_bucket" "static_files" {
#   bucket = "${var.project_name}-${local.environment_suffix}-static"
#   acl    = "public-read"

#   tags = local.common_tags
# }
