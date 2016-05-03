class GameController < ApplicationController
  def index

  	hangman = Hangman.new(params[:word])
  	@length = hangman.length()
  	@tries = hangman.tries()
  	@used = hangman.used().upcase()

    session[:word] = params[:word]
  end

  def type
    Hangman.new(session[:word]).type(params['char'])
    redirect_to action: 'index', word: 'rework'
  end
end
