#prompt user for questions
	puts "Name"
	name = gets.chomp.to_s
	puts "gender"
	gender = gets.chomp.to_s
	puts "Age"
	age = gets.chomp.to_s
	puts "marital status"
	status = gets.chomp.to_s
	puts "number of children"
	children = gets.chomp.to_s
	puts "room spec"
	room = gets.chomp.to_s
	puts "decor theme"
	theme = gets.chomp.to_s

#hash form saved as symbols
form = {
	name: name,
	gender: gender,
	age: age,
	status: status,
	children: children,
	room: room,
	theme: theme,
}

#asking user for update to hash form
puts "would you like to reenter a value? If not type none to skip."
form_update = gets.chomp
if form_update == "yes"
	p form.keys
	puts "which key would you like to update?"
	form_value = gets.chomp
	if form_value == "name"
	puts "Please enter new value"
	form[:name] = gets.chomp
	end
	if form_value == "gender"
	puts "Please enter new value"
	form[:gender] = gets.chomp
	end
	if form_value == "age"
	puts "Please enter new value"
	form[:age] = gets.chomp
	end
	if form_value == "status"
	puts "Please enter new value"
	form[:status] = gets.chomp
	end
	if form_value == "children"
	puts "Please enter new value"
	form[:children] = gets.chomp
	end
	if form_value == "room"
	puts "Please enter new value"
	form[:room] = gets.chomp
	end
	if form_value == "theme"
	puts "Please enter new value"
	form[:theme] = gets.chomp
	end
elsif form_update == "none"
end

p form


#convert user input into data

#