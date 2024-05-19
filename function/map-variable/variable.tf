variable "users_age" {
  type        = map
  default     = {
     mayank = 21
     azfar = 22
  }

}

# output "usersage" {
#   value       = "My name is Mayank and my age is ${lookup(var.users_age, "mayank")}" # now we have to change manually if i want the age of azfar then so to resolve this we use one more variable
  
# }

variable "username" {
  type        = string
  
}

output "information" {
  value       = "My name is ${var.username} and my age is ${lookup(var.users_age, "${var.username}")}"
}
