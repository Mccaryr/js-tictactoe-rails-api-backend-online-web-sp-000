class GamesController < ApplicationController

  def create
    @game = Game.create(game_params)

      respond_to do |f|
        f.json {render json: @game}
      end
  end

  def show

  end

  def update

  end

  def index
    @games = Game.all
    respond_to do |f|
      f.json {render json: @games}
    end
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end

end
