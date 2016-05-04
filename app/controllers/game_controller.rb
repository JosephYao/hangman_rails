class GameController < ApplicationController
  def index

    @word = params[:word]
  	hangman = Hangman.new(@word)
  	@length = hangman.length()
  	@tries = hangman.tries()
  	@used = hangman.used().upcase()

  end

  def type
    Hangman.new('').type(params['char'])
    redirect_to action: 'index', word: params['word']
  end
end
