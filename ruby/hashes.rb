#make an empty hash
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
p "Decor Theme"
new_home[:decor_theme] = gets.chomp

#confirm that they are Starbucks lovers
p "You are a Starbucks Lover. (True/False) "
new_home[:love_starbucks] = gets.chomp

#print out results so far
p new_home

#ask user if they'd like to update any information for which field
p "Which field would you like to change? (Type 'none' if none)" 
answer = gets.chomp
symbol_answer = answer.to_sym 

#asks what the new update should be 
if "#{answer}" != "none"
	p "Okay what would you like to change it to?"
end

#conditional used dependent on the answer of user
if symbol_answer == :user_name
	new_home[:user_name] = gets.chomp
elsif symbol_answer == :age 
	age = gets.chomp
	new_home[:age] = age.to_i
elsif symbol_answer == :kids
	kid_amount = gets.chomp
	new_home[:kids] = kid_amount.to_i
elsif symbol_answer == :decor_theme
	new_home[:decor_theme] = gets.chomp
elsif symbol_answer == :love_starbucks
	new_home[:love_starbucks] = gets.chomp
end

#print new results
p new_home