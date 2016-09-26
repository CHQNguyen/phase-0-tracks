arry = ["1","2","3","4","5"]
hash = {one: 1, two: 2,three: 3, four: 4}
p arry
p hash

	arry.each do |digits|
		puts digits
	end
	arry.map! do |digits|
		puts digits
		digits.next
	end
	p arry

	hash.each do |words, digits|
		puts "#{words} is equal to #{digits}"
	end
	p hash

	first_arry = [0,1,2,3,5,7,8,10,15] 
	first_arry.delete_if { |x| x > 5 }   
	p first_arry

	second_arry = {zero: 0, one: 1, two: 2, three: 3, five: 5, seven: 7, eight: 8, ten: 10,} 
	second_arry.delete_if { |key, num| num < 5 }
	p second_arry


	third_arry = [0,1,2,3,5,7,8,10,15] 
	third_arry.keep_if { |x| x == 5 }
	p third_arry

	fourth_arry = [0,1,2,3,5,7,8,10,15]
	fourth_arry.map! do |x|
	break "stops at 7" if x == 7
	end

p fourth_arry
