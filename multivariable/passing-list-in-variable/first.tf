variable users{
    type = list
}

output printusers{
    value= "first user is ${var.users[0]} and second user is ${var.users[1]} and third user is ${var.users[2]} "
}