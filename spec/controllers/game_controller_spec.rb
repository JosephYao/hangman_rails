require 'rails_helper'

RSpec.describe GameController, type: :controller do

	describe "open page" do

		let(:word_to_guess) { 'word' }
		let(:length_of_word) { word_to_guess.length }

		it "response length of word to view" do
			hangman = double()
			allow(Hangman).to receive(:new).and_return(hangman)
			allow(hangman).to receive(:length).and_return(length_of_word)

			get :index, {word: word_to_guess}

			expect(assigns(:length)).to eq(length_of_word)
		end
	  
	end

end
