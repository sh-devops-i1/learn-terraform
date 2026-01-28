variable "x" {
  default = 100
}
variable "y" {}

output "x" {
  value = var.x
}
output "y" {
  value = var.y
}