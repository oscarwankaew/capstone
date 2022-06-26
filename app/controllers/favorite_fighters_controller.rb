class FavoriteFightersController < ApplicationController
  def index
    favorite_fighters = FavoriteFighter.all
    render json: { message: "working?" }
  end

  def show
    favorite_fighter = FavoriteFighter.find_by(id: params[:id])
    render json: { message: "working?" }
  end

  def create
    favorite_fighter = FavoriteFighter.new(
      user_id: params["user_id"],
      fighter_id: params["fighter_id"],
    )
    favorite_fighter.save
    render json: { message: "working?" }
  end

  def destroy
    favorite_fighter = FavoriteFighter.find_by(id: params[:id])
    favorite_fighter.destroy
    render json: { message: "Selected favorite fight has been successfully deleted" }
  end
end
