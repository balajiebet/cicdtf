resource "aws_instance" "main" {
  ami                    = "ami-0c02fb55956c7d316" // Amazon Linux 2 AMI for us-east-1
  instance_type          = "t2.micro"
  subnet_id              = var.main_subnet_id
  vpc_security_group_ids = [var.main_sg_id]

  tags = {
    Name = "main-ec2"
  }
}

