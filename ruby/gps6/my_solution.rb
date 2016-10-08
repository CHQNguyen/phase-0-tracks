
# Virus# Virus Predictor

# I worked on this challenge [by myself, with: Alexander Giacobbe].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative pulls data from the same location/ related data
# require needs to have the full filepath

# require_relative 'state_data'

class VirusPredictor

  # pulling the data from the state_data.rb and setting to the variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #calling the the predicted_deaths and speed_of_spread, its taking the information
  #thats passed through from initialize and applying the two methods
  def virus_effects
    predicted_deaths
    speed_of_spread
    print "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@speed} months.\n\n"
  end

  private

  #predicted_deaths is a method that takes the population density data from a 
  #state and finds out how much percentage of the population will die.

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      percent = 0.4
    elsif @population_density >= 150
      percent = 0.3
    elsif @population_density >= 100
      percent = 0.2
    elsif @population_density >= 50
      percent = 0.1
    else
      percent = 0.05
    end

    @number_of_deaths = (@population * percent).floor

  end

#speed_of_spread method looks at population density for the state and gives you an
#estimated time for how long the virus will spread.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      @speed = 0.5
    elsif @population_density >= 150
      @speed = 1
    elsif @population_density >= 100
      @speed = 1.5
    elsif @population_density >= 50
      @speed = 2
    else
      @speed = 2.5
    end

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |states, population_hash|
  VirusPredictor.new(states, population_hash[:population_density], population_hash[:population]).virus_effects
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
# Reflection Section
=begin
 
What are the differences between the two different hash syntaxes shown in the state_data file?
One is a regular hash with keys and value the second one has 2 value per key.
What does require_relative do? How is it different from require?
require needs a path to the data file where as relative only needs to be in the same location.
What are some ways to iterate through a hash?
.each and .map would both work to iterate through a hash.
When refactoring virus_effects, what stood out to you about the variables, if anything?
That you should pay attention to each method and ask does each method need information passed in or just to be run.
What concept did you most solidify in this challenge? 
no matter how complex the hash or array you can still iterate through it.
  
=end
