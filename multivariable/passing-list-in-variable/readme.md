# Passing list using variable in Terraform

`.tf` file is

```bash
variable users{
    type = list
}

output printusers{
    value= "first user is ${var.users[0]} and second user is ${var.users[1]} and third user is ${var.users[2]} "
}
```
lets pass the list by taking user input 

make sure you have to put the value like in list datastructure ["value1", "value2"] just like this

```bash
terraform plan
```
![image](https://github.com/mayaworld13/terraform/assets/127987256/659a631a-24ff-46ba-b3c7-556390aafa95)


