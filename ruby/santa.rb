class Santa

	def initialize(gender, ethnicity)
		p "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
		"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end 

	def speak 
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!"
	end 

	def celebrate_birthday
		 @age = @age + 1 
	end 

	def get_mad_at=(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.push(reindeer_name)
		p @reindeer_ranking
	end 

	def gender
		@gender
	end

	def gender=(new_gender)
		@gender = new_gender
	end 

	def age
		@age
	end 

	def ethnicity
		@ethnicity
	end 

end 


santas = []
santa = Santa.new("Female", "Thai")
=begin
santas << santa

example_genders = ["Gender fluid", "Male", "Transgender"]
example_ethnicities = ["Japanese-Canadian", "Native American", "Vietnamese-Australian"]
example_genders.length.times do |idx|
santas << Santa.new(example_genders[idx], example_ethnicities[idx])
end
=end 
p santa.age
santa.celebrate_birthday
p santa.age
santa.celebrate_birthday
p santa.age


