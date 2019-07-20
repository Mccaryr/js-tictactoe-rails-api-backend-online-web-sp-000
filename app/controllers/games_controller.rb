class GamesController < ApplicationController

  def create
    @game = Game.create(game_params)
  end

  def show

  end

  def update

  end

  def index
    @games = Game.all
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end

end
