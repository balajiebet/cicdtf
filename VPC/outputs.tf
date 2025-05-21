output "main_vpc_id" {
  description = "The ID of the main VPC"
  value       = aws_vpc.main.id
}

output "main_subnet_id" {
  description = "The ID of the main subnet"
  value       = aws_subnet.main.id
}

output "main_sg_id" {
  description = "The ID of the main security group"
  value       = aws_security_group.main.id
}