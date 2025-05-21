# Add your variable definitions here

variable "main_subnet_id" {
  description = "The subnet ID for the EC2 instance"
  type        = string
}

variable "main_sg_id" {
  description = "The security group ID for the EC2 instance"
  type        = string
}