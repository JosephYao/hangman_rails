RSpec.describe Hangman do

  let(:hangman) { Hangman.new('word') }

	describe "length" do
	  
		it "length of word" do
			hangman = Hangman.new('another')

			expect(hangman.length).to eq(7)
		end

	end

  describe "tries" do

    it "tries is 12 when game start" do
      expect(hangman.tries).to eq(12)
    end

    it "tries decrease one when type a excluded char" do
      hangman.type('z')

      expect(hangman.tries).to eq(11)
    end

  end

  describe "construction" do

    it "construct with no tries and used" do
      hangman = Hangman.create('word', 0, '')

      expect(hangman.tries).to eq(12)
      expect(hangman.used).to eq('aeiou')
    end

    it "construct with available tries and used" do
      hangman = Hangman.create('word', 11, 'aeiouz')

      expect(hangman.tries).to eq(11)
      expect(hangman.used).to eq('aeiouz')
    end

  end

  describe "used" do

    it "used is aeiou when game starts" do

      expect(hangman.used).to eq 'aeiou'

    end

    it "used should append the excluded char" do

      hangman.type('z')

      expect(hangman.used).to eq('aeiouz')

    end

  end

end
