#word guessing game
#create a game that lets player 1 enter a word
#this word will be hidden and char will be replace underscore
#player 2 will guess by entering 1 letter at a time
#track incrrect guesses can not excess length of word
#correct guesses will reveal itself to player by showing on the word
#incorrect guess will prompt user to try again
#once all letter is guess prompt winning screen
#otherwise promopt you lose play again screen

#logic code
#create game class
class Guessingame
	attr_reader :guess_count, :game_over, :guess_word

	#initial method to split word to array
	def initialize(hidden_word)
		@guess_word = hidden_word.chars.to_a
		#guess will equal length of word
		@guess_count = hidden_word.length
		#set a game over variable to false
		@game_over = false
	end
	#method to change word into (underscore)
	def hide_word
		placeholder = ""

	end
	#method to check input 

end

#user inferface

#promopt new game ask for hidden word input


#WHILE loop to take input 
#IF correct fill in hidden word
#end game if all letters guessed

#ELSE lose a guess and try again
#lose game if guess equal 0

#test
test = []
test = Guessingame.new("rock")

p test
