terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
resource "aws_instance" "instance" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = var.instance_type
  tags = {
    Name = var.name
  }
}
variable "name" {}
variable "instance_type" {}