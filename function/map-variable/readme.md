# Introduction to map variable and lookup function

```bash
variable "users_age" {
  type        = map
  default     = {
     mayank = 21
     azfar = 22
  }

}

output "usersage" {
   value       = "My name is Mayank and my age is ${lookup(var.users_age, "mayank")}"  
  
}
```
![image](https://github.com/mayaworld13/terraform/assets/127987256/3a127d00-f806-4999-8c8b-ed73b6fa34da)

In this output there is one problem we have to change name manually if i want the age of azfar then we have to go to 
file and hardcode so it looks like manual process so to resolve this we use one more variable

`variable.tf file`

```bash
variable "users_age" {
  type        = map
  default     = {
     mayank = 21
     azfar = 22
  }
}

variable "username" {
  type        = string
  
}
```

`outputfile`

```bash
output "information" {
  value       = "My name is ${var.username} and my age is ${lookup(var.users_age, "${var.username}")}"
}
```
![image](https://github.com/mayaworld13/terraform/assets/127987256/1370150a-a249-40e7-a874-044d7c3335cf)

![image](https://github.com/mayaworld13/terraform/assets/127987256/942f57f8-7cc1-434f-9577-fd68b0213c8e)

now if you want to pass the variable username in command line in one go

```bash
terraform plan -var "username=mayank"
```
![image](https://github.com/mayaworld13/terraform/assets/127987256/fe4746ee-633b-450e-884f-3b7690c49907)


Now if I want to pass the map variable using cli in one go then  
```bash
terraform plan -var 'users_age={prashant=22,suman=23,aditya=25}' -var "username=aditya"
```
![image](https://github.com/mayaworld13/terraform/assets/127987256/ccb8dbeb-c9a7-4de3-9405-f851e19de88b)
---
Keep learning terraform



