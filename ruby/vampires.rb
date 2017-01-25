puts "How many employees will be processed?"
number = gets.chomp 

count = 0

until count == "#{number}".to_i
	puts "What's your name? "
	user_name = gets.chomp 

	puts "How old are you? What year were you born?" 
	age = gets.chomp 

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlicbread = gets.chomp 

	puts "Would you like to enroll in the company’s health insurance?"
	healthins = gets.chomp 

	puts "Lists your allergies. (Type 'done' when finished.)"
	allergies = gets.chomp 

	until ("#{allergies}" == "done") || ( "#{allergies}" == "sunshine") 
		puts "What else?"
		allergies = gets.chomp 
	end

	if  "#{allergies}" == "sunshine"
		puts "Probably a vampire."
	elsif ("#{age}".to_i >= 100) && ("#{garlicbread}" == "no" && "#{healthins}" == "no")
		puts "Almost most certainly a vampire."
	elsif ("#{age}".to_i < 100) && ("#{garlicbread}" == "yes" || "#{healthins}" == "yes") 
		puts "Probably not a vampire."
	elsif ("#{age}".to_i >= 100) && ("#{garlicbread}" == "no" || "#{healthins}" == "no")
		puts "Probably a vampire."
	elsif "#{user_name}" == "Drake Cula" || "#{user_name}" == "Tu Fang" 
		puts "Definitely a vampire."
	else 
		puts "Results inconclusive."	
	end
count+= 1

end

puts "	Actually, never mind! What do these questions have to do with anything? Let's all be friends."