module Shout
	def self.yell_angrily(words)
		puts words + "!!!" + " :("
	end
	def yelling_happily(words)
		words + ", I'm so happy!"
	end
end

Shout.yell_angrily("roar")
#Shout.yelling_happily("damn")

class AngryPerson
	include Shout
end

class Parrot
	include Shout
end

angry_person = AngryPerson.new
angry_person.self("Where")


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