class Hangman 
	
	def initialize(word)
		@word = word
	end

	def length
		@word.length
	end

	def tries
		12
	end

	def used
		'AEIOU'
	end
end