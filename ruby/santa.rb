class Santa
	attr_reader :ethnicity
	attr_accessor :age

	def initialize(gender, ethnicity)
		puts "initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
		"Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	def speak
		puts "Ho, ho, ho!  Haaaappy Holidays!!"
	end
	def cookie(cookie_type)
		puts "that was a delicious #{cookie_type}"
	end
	def celebrate_birthday
		age = @age + 1
	end
	def get_mad_at(reindeer_name)
		@reindeer_ranking = reindeer_name.each
	end
end


santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

puts santas