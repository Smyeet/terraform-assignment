
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.example.id
}

output "instance_type" {
  description = "Type of the EC2 instance"
  value       = aws_instance.example.instance_type
}

output "aws_region" {
  description = "Region selected for deployment"
  value       = var.aws_region
}

output "security_group_id" {
  description = "ID of the security group"
  value       = aws_security_group.ec2_security.id
}
