# Introduction to function

you can pass the function like `${functionname(var.variable_blockname)}`

`variable.tf`
```bash
variable "usersname" {
    default = ["gaurav","Saurav","anKit"]
}
```
### join function join the values with given delimeter

`output.tf`
```bash
output "printusername" {
  value = "first user is ${var.usersname[0]}"
}

output "printusername1" {
value = "first user is ${join(",", var.usersname)}"
}
```
![image](https://github.com/mayaworld13/terraform/assets/127987256/1b511195-4426-4acd-b379-d9f6abb323c3)


now if we change the `output.tf` file then

```bash
output "printusername1" {
  value = "first user is ${join("--👍", var.usersname)}"
}
```

![image](https://github.com/mayaworld13/terraform/assets/127987256/5d6d3745-ce00-482d-9422-9a63ca5ab02b)



### upper function make all the letters of values in capital

```bash
output "printusername2" {
  value = "first user is ${upper(var.usersname[0])}"
}
```
![image](https://github.com/mayaworld13/terraform/assets/127987256/cad25027-bd0a-4dc5-b742-7765dafc8219)

### lower function make  the first letter of values  in small letter

```bash
output "printusername3" {
  value = "first user is ${lower(var.usersname[1])}"
}
```

![image](https://github.com/mayaworld13/terraform/assets/127987256/06191f21-0ee5-4114-a8f9-c4889a55f10d)

### title function make  the first letter of values  in capital  letter

```bash
output "printusername4" {
  value = "first user is ${title(var.usersname[2])}"
}
```
![image](https://github.com/mayaworld13/terraform/assets/127987256/94d35df2-15c6-4823-94f5-380674e1ff0a)







