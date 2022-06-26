class FightNightsController < ApplicationController
  def index
    fight_nights = FightNight.all
    render json: fight_nights.as_json
  end

  def show
    fight_night = FightNight.find_by(id: params[:id])
    render json: fight_night.as_json
  end

  def create
    fight_night = FightNight.new(
      fighter_id: params["fighter_id"],
      event_id: params["event_id"],
    )
    fight_night.save
    render json: fight_night.as_json
  end

  def destroy
    fight_night = FightNight.find_by(id: params[:id])
    fight_night.destroy
    render json: { message: "Selected event night has been successfully deleted" }
  end
end
