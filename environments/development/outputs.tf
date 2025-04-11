output "static_files_bucket" {
  value = aws_s3_bucket.static_files.bucket
}

output "container_service" {
  value = aws_lightsail_container_service.main_service.name
}

output "container_service" {
  value = aws_lightsail_container_service.worker_service.name
}


output "redis_instance" {
  value = aws_lightsail_instance.redis.name
}

output "postgres_instance" {
  value = aws_lightsail_instance.postgres.name
}

output "nats_instance" {
  value = aws_lightsail_instance.nats.name
}
