variable "ami_name_pattern" {
  description = "The naming pattern for organizational AMIs"
  type        = string
  default     = "orgname-amazonlinux2-*"
}

data "aws_ami" "org_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
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

