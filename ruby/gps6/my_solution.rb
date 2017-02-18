# Virus Predictor

# I worked on this challenge [by myself, with: Grace Noh].
# We spent [] hours on this challenge.

# EXPLANATION OF require_relative
# pulls in a file from anywhere in your computer; 
# if no start point specified, looks in the same file you are in currently. 
# require looks within Ruby; otherwise, it starts in C

require_relative 'state_data'

class VirusPredictor

  # initializes the method with instance variables; has three parameters
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calling two different methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private # 

  # method that predicts deaths based on population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05 
    end

    number_of_deaths = (@population * multiplier).floor 

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # method that calculates speed of spread based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = case @population_density

      when 200..999
        0.5
      when 150...200
        1.0
      when 100...150
        1.5
      when 50...100
        2.0 
      else 
        2.5
    end 

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data|
  diff_states = VirusPredictor.new(state, data[:population_density], data[:population])
  diff_states.virus_effects
end 


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# # Reflection Section

#  What are the differences between the two different hash syntaxes shown in the state_data file?
# One of the hashes is using strings with a hashrocket while the nested hashes are using symbol data types. 

# What does require_relative do? How is it different from require?
# Require_relative allows 

#  What are some ways to iterate through a hash?
# You can iterate through a hash with some built in methods such as .each or .times. We would just need to make sure we have two parameters.

# When refactoring virus_effects, what stood out to you about the variables, if anything?

# What concept did you most solidify in this challenge?