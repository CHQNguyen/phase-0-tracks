
def encrypt(secret_password)
index = 0
    while index < secret_password.length
	secret_password[index]= secret_password[index].next 
	index += 1
	end
	return secret_password
end


def decrypt(secret_password)
index = 0
	while index < secret_password.length
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	reversed_alpha = alphabet.reverse!
	add_index = reversed_alpha.index(secret_password[index]) 
	add_index += 1
	secret_password[index] = reversed_alpha[add_index]
	index += 1
	end
	return secret_password
end



# OUR DRIVER CODE
puts "agent what is your name"
name = gets.chomp

puts "Hi, #{name}"

counter = 0

while counter < 1
puts "would you like to decrypt or encrypt a massage?"
agent_request = gets.chomp!
if agent_request = "encrypt"
	perf1 = 1
	counter += 2
elsif agent_request = "decrypt"
	perf1 = 2
	counter += 2
else
	puts "Sorry Please try again"
	counter == 0
end
end

puts "Please enter your password."
secret_password = gets.chomp
if agent_request = 1
	encrypt(secret_password)
elsif agent_request = 2
	decrypt(secret_password)
end