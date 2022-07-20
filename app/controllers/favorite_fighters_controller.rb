class FavoriteFightersController < ApplicationController
  before_action :authenticate_user

  def index
    @favorite_fighters = current_user.favorite_fighters
    render template: "favorite_fighters/index"
  end

  def show
    @favorite_fighter = current_user.favorite_fighters.find_by(id: params[:id])
    render template: "favorite_fighters/show"
  end

  def create
    favorite_fighter = FavoriteFighter.new(
      user_id: current_user.id,
      fighter_id: params["fighter_id"],
    )
    if favorite_fighter.save
      @favorite_fighter = favorite_fighter
    else
      render json: { errors: favorite_fighter.errors.full_messages }, status: :expectation_failed
    end
    render template: "favorite_fighters/show"
  end

  def destroy
    favorite_fighter = current_user.favorite_fighters.find_by(id: params[:id])
    favorite_fighter.destroy
    render json: { message: "Selected favorite fight has been successfully deleted" }
  end
end
