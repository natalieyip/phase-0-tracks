=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	words.upcase + "!!!" + " :D"
  end
end	

p Shout.yelling_happily("Happy Loser")
p Shout.yell_angrily("loser")

=end

module Shout
 	def excited_yell(num)
 		num.times {puts "WHOOO!"}
	end

	def wail(name)
		"WHY " + name + " WHY?!"
	end 

	def encourage
		quotes = [
			"Yesterday, you said tomorrow.",
			"DO IT. JUST DO IT.", 
			"Don't let your dreams be dreams!", 
			"IF YOU’RE TIRED OF STARTING OVER, STOP GIVING UP.",
			"SOME PEOPLE DREAM OF SUCCESS, WHILE YOU’RE GONNA WAKE UP AND WORK HARD AT IT.",
			"Another one."
		]
		quotes.sample
	end 
end

class Toddler
	include Shout
end 

class Ex_Boyfriends
	include Shout
end 

############# DRIVER CODE #################

noel = Toddler.new
noel.excited_yell(6)
gary = Ex_Boyfriends.new
p gary.wail("Stella")
p noel.encourage

