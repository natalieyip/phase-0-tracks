#Release 0

class Santa
	#Release 3
	attr_reader :gender, :ethnicity
	attr_accessor :age, :reindeer_ranking

	def initialize
		p "Initializing Santa instance ..."

	#Release 1
		@gender = [
			"agender", "female", "bigender",
			"male", "female", "gender fluid",
			"N/A"
		]
		@ethnicity = [
			"black", "Latino", "white", 
			"Japanese-African", "prefer not to say", 
			"Mystical Creature (unicorn)", "N/A", "Chinese-Canadian",
			"Southeast Asian", "French Mexican", "Centaur", "Sphynx",
			"Asian Brazilian", "Vietnamese-Australian", "Teo-Chew"
		]
		@reindeer_ranking = [
			"Rudolph", "Dasher", "Dancer", 
			"Prancer", "Vixen", "Comet", 
			"Cupid", "Donner", "Blitzen"
		]
		@age = 0
	end 

	def speak 
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!"
	end 

	#Release 2
	def celebrate_birthday
		 @age = @age + 1 
	end 

	def get_mad_at=(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.push(reindeer_name)
		p @reindeer_ranking
	end 

	def random_generator
		@gender = @gender.sample
		@ethnicity = @ethnicity.sample
	end 


end 

santas = []
santa = Santa.new

=begin

######Driver's Code###########

santas << santa
genders = ["Gender fluid", "Male", "Transgender"]
ethnicities = ["Japanese-Canadian", "Native American", "Vietnamese-Australian"]
genders.length.times do |idx|
santas << Santa.new(genders[idx], ethnicities[idx])
end

santa.celebrate_birthday
puts "Santa turned #{santa.age} tonight!"
santa.celebrate_birthday
puts "Santa turned #{santa.age} tonight!"

santa.get_mad_at = "Vixen" 
santa.gender = "Fluid"
puts "Santa is now #{santa.gender}" 
santa.gender = "Transgender"
puts "Santa is now #{santa.gender}" 

=end

#Release 4

puts "How many Santas do you want to generate?"
amount_of_santas = gets.chomp.to_i 

amount_of_santas.times do 
	new_gender = santa.gender.sample
	new_eth = santa.ethnicity.sample
	santa.age = rand(0..140)
	puts "Your Santa is #{new_gender}, #{new_eth}, and #{santa.age} years young."
end 



