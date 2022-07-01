class FavoriteFightersController < ApplicationController
  before_action :authenticate_user

  def index
    favorite_fighters = current_user.favorite_fighters
    render json: favorite_fighters.as_json
  end

  def show
    favorite_fighter = current_user.favorite_fighters.find_by(id: params[:id])
    render json: favorite_fighter.as_json
  end

  def create
    favorite_fighter = FavoriteFighter.new(
      user_id: current_user.id,
      fighter_id: params["fighter_id"],
    )
    favorite_fighter.save
    render json: favorite_fighter.as_json
  end

  def destroy
    favorite_fighter = current_user.favorite_fighters.find_by(id: params[:id])
    favorite_fighter.destroy
    render json: { message: "Selected favorite fight has been successfully deleted" }
  end
end
