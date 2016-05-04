class Hangman 
	
	def initialize(word, tries = 12)
		@word = word
    @tries = tries
	end

  def self.create word, tries
    if tries == 0
      Hangman.new(word)
    else
      Hangman.new(word, tries)
    end
  end

	def length
		@word.length
	end

  def word
    @word
  end

	def tries
		@tries
	end

	def used
		'AEIOU'
	end

  def type char
    @tries -= 1
  end
end
