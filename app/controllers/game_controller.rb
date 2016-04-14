class GameController < ApplicationController
  def index

  	@length = Hangman.new.length()

  end
end
