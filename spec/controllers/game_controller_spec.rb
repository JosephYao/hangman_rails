require 'rails_helper'

RSpec.describe GameController, type: :controller do

	describe "open page" do

		let(:word_to_guess) { 'word' }
		let(:length_of_word) { word_to_guess.length }
		let(:max_tries) { 12 }
		let(:hangman) { stub_hangman }

		it "response length of word and tries to view" do
			allow(hangman).to receive(:length).and_return(length_of_word)
			allow(hangman).to receive(:tries).and_return(max_tries)

			start_game

			expect(assigns(:length)).to eq(length_of_word)
			expect(assigns(:tries)).to eq(max_tries)
		end
	  
		it "response used to view in upper case" do
			allow(hangman).to receive(:used).and_return('used')

			start_game

			expect(assigns(:used)).to eq('USED')
		end

		def start_game
			get :index, {word: word_to_guess}
		end

		def stub_hangman
			hangman = Hangman.new '' 
			allow(Hangman).to receive(:new).and_return(hangman)
			return hangman
		end
	end

end
