terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
resource "aws_instance" "instance" {
  for_each = var.instance_types
  ami = "ami-0220d79f3f480ecf5"
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = ["sg-03f7da9ebe210e12a"]
  tags = {
    Name = each.key
  }
}
variable "instance_types" {
  default = {
    frontend = {
      instance_type = "t3.micro"
    }
    backend = {
      instance_type = "t2.micro"
    }
    mysql = {
      instance_type = "t3.micro"
    }
  }
}