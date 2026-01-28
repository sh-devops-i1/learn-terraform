variable "number" {}

output "number" {
  value = var.number > 10 ? "Number is Greater than 10" : "Number is Less than or equal to 10"
}