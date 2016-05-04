class GameController < ApplicationController
  def index

    @word = params[:word]
    hangman = Hangman.create(@word, params[:tries].to_i, params[:used])
  	@length = hangman.length()
  	@tries = hangman.tries()
  	@used = hangman.used().upcase()

  end

  def type
    hangman = Hangman.new(params[:word])
    hangman.type(params['char'])
    redirect_to action: 'index', word: hangman.word, tries: hangman.tries, used: hangman.used
  end
end
