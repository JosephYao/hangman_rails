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

	end

  def stub_hangman
    hangman = Hangman.new 'rework' 
    allow(Hangman).to receive(:new).and_return(hangman)
    return hangman
  end

  def spy_hangman
			hangman = spy 'hangman'
			allow(Hangman).to receive(:new).and_return(hangman)
      hangman
  end

  describe "type" do
    it "should call hangman type" do
			hangman = spy_hangman

      type_not_contained_char

      expect(hangman).to have_received(:type).with('z')
    end

    it "should response hangman" do
			hangman = stub_hangman

      type_not_contained_char

      expect_redirect_params_to_eq hangman
    end

    def type_not_contained_char
      post :type, {
        char: 'z',
        word: 'rework'
      }
    end

    def expect_redirect_params_to_eq hangman
      redirect_params = Rack::Utils.parse_query(URI.parse(response.location).query)
			expect(redirect_params).to eq(
        'word' => hangman.word,
        'tries' => hangman.tries.to_s,
        'used' => hangman.used
      )
    end
  end
end
