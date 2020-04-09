class Api::V1::GamesController < ApplicationController
  
  def index
    games = Game.all

    render json: games
  end

  def create
    game = Game.create(game_params)

    render json: game
  end

  def update
    game = Game.find(params[:id])
    game.update(game_params)
  end


  private

  def game_params
    params.permit(:duration, :user_id)
  end
end


