variable "x" {
  default = 100
}
# variable "y" {}
variable "x_list" {
  default = [1,2,3]
}
output "x" {
  value = var.x
}
output "x_list" {
  value = var.x_list
}