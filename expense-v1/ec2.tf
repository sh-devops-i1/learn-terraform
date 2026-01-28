terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
resource "aws_instance" "frontend" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-03f7da9ebe210e12a"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-03f7da9ebe210e12a"]
  tags = {
    Name = "backend"
  }
}

resource "aws_instance" "mysql" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-03f7da9ebe210e12a"]
  tags = {
    Name = "mysql"
  }
}
