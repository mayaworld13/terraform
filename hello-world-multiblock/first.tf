#  block name should be different 
# A name must start with a letter or underscore and may contain only letters, digits, underscores, and dashes.
# but when we want to run 100 block which contain very big code so can be destructured so what we do is we keep the output in different file and 
# make in such a  way that multiple files run in one go 

output "firstoutput_block" {
  value       = "This is first block"
}

output "secondoutput_block"{
    value    = " this is second block"
}

output "thirdoutput_block"{
    value = "this is third block"
    
}
