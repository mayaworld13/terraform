# Multi variable usage  with default value in Terraform

1. variables `.tf` file
   
```bash
variable schoolname{
    default = "C.M.A"
}   

variable name{
    default = "Mayank"
}
```

2. output file

```bash
output information {
  value = "My name is ${var.name} and my school name is  ${var.schoolname}"
}
```

Now If we don't want to pass the variable then it takes default value  or if user don't want to interact
then use this command automatically default variables get alloted

```bash
terraform plan
```

![image](https://github.com/mayaworld13/terraform/assets/127987256/2bcaacc9-1ddd-4d18-aaea-b897afc44c81)

But if you want to pass the input 

```bash
terraform plan -var "schoolname=M.I.T.s" -var "name=Azfar"
```


![image](https://github.com/mayaworld13/terraform/assets/127987256/a19ba98b-b454-44cb-8431-b5a4d6bd3df7)



Now if we want that particular variable can be  of integer type or string type then

1. variables `.tf` file

```bash
variable schoolname{
    default = "C.M.A"
}   ## passing default value

variable name{
    default = "Mayank"
}
variable age{
    default = 99
    
}
```
2. output file

```bash
output information {
  value = "My name is ${var.name} and I am ${var.age} years of old and my school/college name is  ${var.schoolname}"
}
```

when we pass the any value they attain it 

```bash
terraform plan -var "schoolname=Christ jyoti" -var "name=ram"  -var "age=kakdfjkf"
```

![Screenshot 2024-05-19 013703](https://github.com/mayaworld13/terraform/assets/127987256/f9a24e42-97d1-4996-8a3c-fe86f869822c)

see this age is in string which is not practically possible possible so now let decide the type of variable


1. variables `.tf` file

```bash
variable schoolname{
    default = "C.M.A"
}   ## passing default value

variable name{
    default = "Mayank"
}
variable age{
    default = 19
    type = number
}
```

now lets run what happen

![image](https://github.com/mayaworld13/terraform/assets/127987256/33fb3b8e-eb80-4c5d-b6dd-6bc442ab8ca6)

