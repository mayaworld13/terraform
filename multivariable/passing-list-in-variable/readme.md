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
then it take user input give it
give the input like `["mayank", "rahul", "aman"]'` 

![image](https://github.com/mayaworld13/terraform/assets/127987256/659a631a-24ff-46ba-b3c7-556390aafa95)

it is used like when you have to give multiple security group in an instance

if you want to pass the list using command line then 
```bash
 terraform plan -var 'usersname=["mayank", "rahul", "aman"]'
```
![image](https://github.com/mayaworld13/terraform/assets/127987256/f382b2ea-a73b-46bd-8bdd-d4400d54aba5)



