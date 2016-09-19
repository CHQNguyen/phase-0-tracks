puts "how many employees do you want to process?"
counter = gets.chomp.to_i
while counter > 0

  #basic questions
  puts "Good day sir, what is your name?"
  name = gets.chomp
  if name == "Drake Cula" or name == "Tu Fang" 
  answer = "Definitely a vampire."
  end

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  year_born = gets.chomp.to_i
  current_year = Time.now.to_i
  if (current_year - year_born) == age
  age = true
  else 
  age = false
  end

  puts "Our company cafeteria serves garlic bread. Should we order something for you?"
  garlic = gets.chomp
  if garlic == "yes"
  garlic = true
  elsif garlic == "no"
  garlic = false
  end

  puts "Would you like to enroll in the company's health insurance?"
  health = gets.chomp
  if health == "yes"
  health = true
  elsif health == "no"
  health = false
  end
  puts "Do you have any allergies to list?"

    allergies = gets.chomp.downcase

  if allergies == "yes"
  add_allergies = true
  while add_allergies 
  puts "Enter an allergy one by one.  Enter 'done' when finished."
  allergy = gets.chomp.downcase
  if allergy == "sunshine"
  answer = "Probably a vampire."
  elsif allergy == "done" "no"
  add_allergies = false
  end
  end
  end

  if age == true && garlic == true && health == true
  answer = "probably not a vampire"
  elsif age == false && (garlic == false || health = false)
  answer = "probably a vampire"
  elsif age == false && garlic == false && health = false
  answer = "almost certainly a vampire."
  end
  
  puts answer
  

counter -= 1
end
  


puts "Actually, never mind! What do these questions have to do with anything? 

Let's all be friends."