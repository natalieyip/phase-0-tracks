=begin
- Ask user for their name
- Split it up and reverse the words

=end



def swap(name)
	name_arr = name.split(" ")
	name_arr.reverse.join(" ")
end 

def vowel_change(name)
	vowel = "aeiou"
	index = 0
	swapped_name = swap(name) #string of name 
	while index < swapped_name.length 
		if swapped_name[index] == "u"
			swapped_name[index] = "a"
		elsif vowel.index(swapped_name[index]) != nil
			newIndex = vowel.index(swapped_name[index]) + 1
			swapped_name[index] = vowel[newIndex]
		end
	index += 1
	end 
	swapped_name
end 

def consonant_change(name)
	consonants = "bcdfghjklmnpqrstvwxyz"
	index = 0
	new_name = vowel_change(name).downcase
	while index < new_name.length
		if new_name[index] == "z" 
			new_name[index] = "b"
		elsif consonants.index(new_name[index]) != nil
			newIndex = consonants.index(new_name[index]) + 1
			new_name[index] = consonants[newIndex]
		end
		index += 1
	end
	new_name.split.map!{|word| word.capitalize!}.join(' ')

end 
 
 p consonant_change("Felicia Torres")

user_name = nil
all_names ={}

until "#{user_name}"  == "stop"
	puts "Whats your name? (Type 'stop' when you want to stop.) "
	user_name = gets.chomp
	new_name = consonant_change("#{user_name}")
	puts "Congrats, your name secret name is #{new_name}!"
	all_names["#{user_name}"] = new_name
end

all_names.delete_if {|x,y| x == "stop"}
all_names.each {|x, y| p "#{x} is actually #{y}" }




