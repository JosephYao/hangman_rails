RSpec.describe Hangman do

	describe "length" do
	  
		it "length of word" do
			hangman = Hangman.new('another')

			expect(hangman.length).to eq(7)
		end

	end

end