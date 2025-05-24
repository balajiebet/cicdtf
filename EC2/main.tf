variable "ami_name_pattern" {
  description = "The naming pattern for organizational AMIs"
  type        = string
  default     = "orgname-amazonlinux2-*"
}

data "aws_ami" "org_ami" {
  most_recent = true
  owners      = ["self"] # or your AWS Account ID

  filter {
    name   = "name"
    values = [var.ami_name_pattern]
  }
}

resource "aws_instance" "main" {
  ami                    = data.aws_ami.org_ami.id
  instance_type          = "t2.micro"
  subnet_id              = var.main_subnet_id
  vpc_security_group_ids = [var.main_sg_id]

  tags = {
    Name = "main-ec2"
  }
}

