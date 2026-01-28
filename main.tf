variable "env" {}
variable "common" {}
output "env" {
  value = var.env
}
output "common" {
  value = var.common
}