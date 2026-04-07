terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.3"
    }
  }
}
variable "d1" {
  default = [
    {
      "course_name" : "AWS"
      "trainer_name" : "Shuja"
    },
    {
      "course_name" : "AZURE"
      "trainer_name" : "MOHD"
    },

  ]
}

output "course" {
  value = var.d1.*.course_name
}