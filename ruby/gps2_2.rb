#defining a new_list method 
#add item to the quantity 

new_list = {}


#define a new method that adds items to a list
def add(list, item_name, quantity)
	list[item_name] = quantity
	list
end

#p new_list("carrot", 0)
add(new_list, "apples", 3)
add(new_list, :bananas, 4)
add(new_list, :peach, 8)

p new_list

#define a new method that updates an item to a list 
def update(list, item, quantity)
	list[item] = quantity
	list
end 

p update(new_list, :apples, 4)

#define a new method that removes item from a list 
def remove(list, item)
	list.delete(item)
	list
end

p remove(new_list, :apples)

#define a method that prints out all the items from our list
def print_all(list)
	list.each {|key, value| puts "We want #{value} #{key}!" }
end 

print_all(new_list)



answer = nil 


until answer == "stop"
	puts "What do you want to do with list?(add/remove/update) "
		decision = gets.chomp
		if decision == "add"
			puts "What do you want to add to the list?"
			item = gets.chomp
			puts "How many would you like?"
			quantity = gets.chomp.to_i
			p add(new_list, item, quantity)
		elsif decision == "remove"
			puts "What do you want to remove?"
			item = gets.chomp
			p remove(new_list, item) 
		elsif decision == "update"
			puts "What do you want to update?"
			item = gets.chomp 
			puts "How many would you like to update?"
			quantity = gets.chomp.to_i
			p update(new_list, item, quantity)
		else 
			puts "I didn't understand you."
		end 
	puts "If this is your last item say 'stop'! Otherwise, say 'continue'." 
	answer = gets.chomp 
end 

p new_list

=begin
#Reflection# 

What did you learn about pseudocode from working on this challenge?

I think pseudocoding is supposed to lay out your thought process on paper to help sort
out the problem and how you plan to tackle it early on so when you actually do start writing 
code, you'll have a better gauge on when to start. I however always feel like pseudocoding is 
more effective for me after writing actual code for some reason. I feel like I think better 
this way but I may also be pseudocoding incorrectly. 

What are the tradeoffs of using arrays and hashes for this challenge?

If we used only arrays for this challenge, it would be immensely difficult to have a quantity 
aspect of the grocery list. Hashes make it more effective to know how many of each item would
we need. 

What does a method return?

A method returns the last evaluated expression. 

What kind of things can you pass into methods as arguments?

You can pass in data types and data structures into methods as arguments such as 
integers, strings, arrays, etc. 


How can you pass information between methods?

Once a method is solidified, that return value from the first method can then be used 
in a new method that you create. For example: 

def mult(x,y)
	x * y
end 

def mult_then_subtract(x,y)
	product = mult(x,y)
	product - y 
end 


What concepts were solidified in this challenge, and what concepts are still confusing?

I think I'm still having trouble understanding why someone might use symbols other than 
for readability purposes. Also I feel like my partner's idea for this question "If this 
is your last item say 'stop'! Otherwise, say 'continue'." helps me understand how to create
a better interface for the user and has a stronger control of the loop itself.


=end 



