new_home = {}

#asks for client name
p "Name of Client"
new_home[:user_name] = gets.chomp

#prompts user for client's age 
p "Client Age"
age = gets.chomp
new_home[:age] = age.to_i

#asks for amount of kids
p "Client Kid Amount"
kid_amount = gets.chomp
new_home[:kids] = kid_amount.to_i

#asks for decoration theme 
p "Decor Theme:"
new_home[:decor_theme] = gets.chomp

p new_home