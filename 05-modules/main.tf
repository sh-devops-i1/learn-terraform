module "instance-1" {
  source = "./ec2"
  name = "frontend"
  instance_type = "t2.micro"
}
module "instance-2" {
  source = "./ec2"
  name   = "backend"
  instance_type = "t3.micro"
}

