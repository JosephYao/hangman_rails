class Hangman 
	
	def initialize(word, tries = 12, used = 'aeiou')
		@word = word
    @tries = tries
    @used = used
	end

  def self.create word, tries, used
    if tries == 0
      Hangman.new(word)
    else
      Hangman.new(word, tries, used)
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
		@used
	end

  def type char
    @tries -= 1
    @used += char
  end
end
