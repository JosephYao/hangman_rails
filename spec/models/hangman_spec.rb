RSpec.describe Hangman do

	describe "length" do
	  
		it "length of word" do
			hangman = Hangman.new('another')

			expect(hangman.length).to eq(7)
		end

	end

  describe "tries" do

    let(:hangman) { Hangman.new('word') }

    it "tries is 12 when game start" do
      expect(hangman.tries).to eq(12)
    end

    it "tries decrease one when type a not contained char" do
      hangman.type('z')

      expect(hangman.tries).to eq(11)
    end

  end

  describe "construction" do

    it "construct with no tries" do
      hangman = Hangman.create('word', 0)

      expect(hangman.tries).to eq(12)
    end

    it "construct with available tries" do
      hangman = Hangman.create('word', 11)

      expect(hangman.tries).to eq(11)
    end

  end

end
