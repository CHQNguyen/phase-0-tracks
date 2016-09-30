grocery_list = {}
# Method to create a list
def string_to_hash(hash, grocery)#accept input as a string
	groceryarr = grocery.split(' ')
	groceryarr.each do |grocery| #split item an add them to our hash
		add_item(hash,grocery, 1)
	end
end

# Method to add an item to a list
def add_item(hash, grocery, quantity)
	hash[grocery] =  quantity # and set value to their quantity
end

# Method to remove an item from the list
def remove_item(hash, grocery)
	hash.delete_if{|k, v| k == grocery}#item they want to delete?
	#locate matching key name
	#deleting that key
end

# Method to update the quantity of an item
def quantity_update(hash, grocery, quantity)#ask user for item key they wish to change
	hash[grocery] = grocery #locating matching key
	hash[grocery] = quantity #updating value of that key
end

# Method to print a list and make it look pretty
def print_method(hash)
	hash.each do |grocery, quantity| #print out in in different line
	puts "In your bag you have #{quantity} #{grocery}" #mulitple lines of string
	end
end

string_to_hash(grocery_list,"corn carrot apples bananna")
add_item(grocery_list, "lemonade", 2)
add_item(grocery_list, "tomatoes", 3)
add_item(grocery_list, "onions", 1)
add_item(grocery_list, "ice cream", 4)
remove_item(grocery_list, "lemonade")
quantity_update(grocery_list, "ice cream", 1)
print_method(grocery_list)

=begin

    What did you learn about pseudocode from working on this challenge?
    I learned that writing out a clear pseudocode really helps to orgianize your thought and help you better understand the process.
    What are the tradeoffs of using arrays and hashes for this challenge?
    i learn that althought hash are a little bit harder for me to work with they make thing easier in the long run.  Pulling the keys and adding value to that key was easy to do.
    What does a method return?
    	a method will return the information you pass into it.
    What kind of things can you pass into methods as arguments?
    	we can pass strings or value into a method to have it then alter our information.  This information can then be passed into another bethod in order
    How can you pass information between methods?
    	the same variable names can be used within a method and you can pass information to a method by calling it.
    What concepts were solidified in this challenge, and what concepts are still confusing?
		I'm really comfortable with writing and understand what a method does.  I'm still confused on how many variables i need and calling those variables the correct way.  But this gave me a much better understanding then before.
=end
