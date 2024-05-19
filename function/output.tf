output "printusername" {
  value = "first user is ${var.usersname[0]}"
}

# output "printusername1" {
#   value = "first user is ${join(",", var.usersname)}"
# }
output "printusername1" {
  value = "first user is ${join("--👍", var.usersname)}"
}


output "printusername2" {
  value = "first user is ${upper(var.usersname[0])}"
}

output "printusername3" {
  value = "first user is ${lower(var.usersname[1])}"
}

output "printusername4" {
  value = "first user is ${title(var.usersname[2])}"
}