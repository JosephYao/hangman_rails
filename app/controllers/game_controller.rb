class GameController < ApplicationController
  def index

  	@length = Hangman.new(params[:word]).length()

  end
end
