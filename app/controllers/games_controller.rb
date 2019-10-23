class GamesController < ApplicationController
  def index
  end

  def show
    @game = Game.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end
end
