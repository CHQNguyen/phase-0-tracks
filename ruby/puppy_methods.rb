=begin
class Puppy
	def initialize
		puts "Initializing new puppy instance ..."
	end
  	def fetch(toy)
    	puts "I brought back the #{toy}!"
    	toy
  	end
		bvalue = 0	
	def bark(bvalue)
		while bvalue > 0
			puts "woof!"
		bvalue -= 1
		end
	end
	def roll_over
		puts "roll over"
	end
	def dog_year(age)
		age.to_i
		age = age * 7
		puts "Your puppy is #{age} in dog years"
	end
	def play_dead
		puts "X.X"	
	end
end


fido = Puppy.new

fido.fetch("ball")
fido.bark(3)
fido.roll_over
fido.dog_year(1)
fido.play_dead
=end

class Student
	def initialize
		puts "I'm a student"	
	end
	def home_work(value)
		puts "after work i do #{value} hours worth of homework"
	end
	def drink_tea(tvalue)
		puts "my favorite tea is #{tvalue}"
	end
end

chinh = Student.new

arry = []

(0..50).each do |i|
	chinh.home_work(10)
	chinh.drink_tea("black")
end

p arry