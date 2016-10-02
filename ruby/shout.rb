module Shout
	def yell_angrily(words)
		puts words + "!!!" + " :("
	end
	def yelling_happily(words)
		words + ", I'm so happy!"
	end
end

#Shout.yell_angrily("roar")
#Shout.yelling_happily("damn")

class AngryPerson
	include Shout
end

class Parrot
	include Shout
end

angry_person = AngryPerson.new
angry_person.yell_angrily("Where are my keys")

parrot = Parrot.new
parrot.yell_angrily("Squak, Where are my keys")
parrot.yelling_happily("squak")

module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

class Bird
  include Flight
end

class Plane
  include Flight
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)