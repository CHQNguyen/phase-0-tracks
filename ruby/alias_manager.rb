
code_name = []

loop do
#enter an agent first and last name here
puts "please enter agent's full name"
agent_name = gets.chomp.downcase
reverse_full = agent_name.split(" ").reverse.join(" ")
full_name = reverse_full.chars.to_a

  #array
  symbol = [" "]
  vowels = ["a", "e", "i", "o", "u"]
  consonant = [ "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  #split out first name
    full_new = full_name.map do |char|
      if vowels.include?(char)
        #push vowels to the next vowels
        vowels.rotate(1)[vowels.index(char)]
      elsif consonant.include?(char)
        consonant.rotate(1)[consonant.index(char)]
      elsif symbol.include?(char)
        symbol.rotate(1)[symbol.index(char)]
      end
    end
    #push to code name array
    code_name << full_new.join
    p code_name
    p "#{agent_name} code name is #{code_name.last}"
    p "to continue press ENTER or type quit to end"
break if gets.chomp == "quit"
end
