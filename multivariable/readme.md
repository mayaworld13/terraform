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


