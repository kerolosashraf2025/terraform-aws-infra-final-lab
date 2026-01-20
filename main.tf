
# Provider

provider "aws" {
  region = "eu-west-1"
}


# Import Existing VPC

data "aws_vpc" "main" {
  id = var.vpc_id
}


# Create Public Subnet

resource "aws_subnet" "public" {
  vpc_id                  = data.aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name  = "final-public"
    Owner = "kerolos"
  }
}


# Security Group

resource "aws_security_group" "web_sg" {
  name        = "final-sg"
  description = "Allow inbound HTTP/HTTPS/SSH"
  vpc_id      = data.aws_vpc.main.id

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name  = "final-sg"
    Owner = "kerolos"
  }
}


# EC2 MODULE

module "ec2" {
  source          = "./modules/ec2"
  subnet_id       = aws_subnet.public.id
  security_groups = [aws_security_group.web_sg.id]
  instance_type   = var.instance_type
  ami_id          = var.ami_id
  key_name        = var.key_name
}
