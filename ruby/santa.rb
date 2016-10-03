class Santa
	attr_reader :ethnicity
	attr_accessor :age

	def initialize(gender, ethnicity, age)
		puts "initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
		"Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end
	def speak
		puts "Ho, ho, ho!  Haaaappy Holidays!!"
	end
	def cookie(cookie_type)
		puts "that was a delicious #{cookie_type}"
	end
	def celebrate_birthday
		@age = @age + 1
	end
	def get_mad_at(reindeer_name)
		@reindeer_ranking = reindeer_name.each
	end
end


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_age = [12, 26, 36, 47, 27, 17, 77, 65, 52, 35, 46, 73]
(50).times do |i|
  new_value = Santa.new(example_genders[i], example_ethnicities[i], example_age[i])
  santas << new_value
end


p santas