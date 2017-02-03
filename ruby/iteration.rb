
colors = ["blue", "red", "orange", "green", "maroon"]
snacks = { 
	"Chocolate" => "twix",
	"Peppermint" => "Candycane",
	"Haribo" => "Gummy Bears",
	"Crackers" => "Pocky"
}
p colors

new_colors = []

colors.each do |color|
	new_colors << color.upcase

end

p colors
p new_colors

colors.map! do |color|
	new_colors << color.chop

end

p colors
p new_colors

snacks.each do |snack, name|
	puts "My fav #{snack} is #{name}"
end

###############################


integers = [1, 2, 5, 10, 200, 4, 3]
awesome_numbers = [120, 420, 888, 335, 12, 317, 1225]
alphabet = ["a", "b", "c", "z", "t", "p"]

p integers.reject {|numbers| numbers > 9}
p integers.delete_if {|num| num.odd? }
p awesome_numbers.keep_if {|num| num < 150}
p [12345, 5,8, 9, 120].select {|num| num.even? }
p integers.delete_if {|num| num.even? }


while awesome_numbers.length > 3
	awesome_numbers.each do |x| 
		next if x < 300
		awesome_numbers.delete x
	end
end
p awesome_numbers

#############################

cool_integers = { 
	1 => "one",
	2 => "two",
	33 => "thirty three",
	100 => "one hundred", 
	50 => "fifty"
}

food_amount = { 
	4 => "pizza", 
	10 => "pepperoni", 
	12 => "cilantro", 
	2 => "pho", 
	700 => "eggs benedict", 
	17 => "mac and cheese",
	13 => "ramen"
}

p cool_integers.reject {|key, value| key < 3}
p cool_integers.delete_if {|digit, word| digit.odd? }
p food_amount.select {|amount, food| amount.even?}
p food_amount.keep_if{|digit, word| digit > 10}



