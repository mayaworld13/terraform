variable user{}


## next possibility

variable employee_name{}

output print_employee {
  value = var.employee_name
}


## next possibility
variable student{}

output print_student {
  value = "var.student"
}

## next possibility
variable username{}

output printname {
  value = "${var.username}"
}

variable school{}

output nameofschool {
  value = "Your school name is ${var.school}"
}
