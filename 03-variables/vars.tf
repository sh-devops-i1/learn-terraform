variable "x" {
  default = 100
}
# variable "y" {}
variable "x_list" {
  default = [1,2,3]
}
variable "y_map" {
  default = {
    x = "ABC",
    y = "XYZ"
  }
}
output "x" {
  value = var.x
}
output "x_list" {
  value = var.x_list
}
output "x_1" {
  value = var.x_list[0]
}
output "y_map" {
  value = var.y_map["y"]
}
