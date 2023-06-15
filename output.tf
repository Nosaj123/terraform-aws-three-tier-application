output "Region" {
  description = "AWS Region"
  value       = var.region
}

output "LB-DNS-Endpoint" {
  description = "The DNS name of the ALB"
  value       = aws_lb.external-elb.dns_name
}

output "VM-Type" {
  description = "VM Instance Type"
  value       = aws_instance.webserver1.instance_type
}

output "DB-Endpoint" {
  description = "Database Endpoint"
  value       = aws_db_instance.default.endpoint
}

output "DB-Storage" {
  description = "Database Storage"
  value       = aws_db_instance.default.allocated_storage
}
