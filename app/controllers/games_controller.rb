class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
  end

  def update
  end

  def destroy
    @game = Game.find_by_id(params[:id])
    @game.destroy
    redirect_to root_path
  end
end
