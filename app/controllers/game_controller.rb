class GameController < ApplicationController
  def index

  	hangman = Hangman.new(params[:word])
  	@length = hangman.length()
  	@tries = hangman.tries()

  end
end
