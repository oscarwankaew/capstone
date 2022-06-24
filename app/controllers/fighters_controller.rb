class FightersController < ApplicationController
  def index
    fighters = Fighter.all
    render json: fighters.as_json
  end

  def show
    fighter = Fighter.find_by(id: params[:id])
    render json: fighter.as_json
  end

  def create
    fighter = Fighter.new(
      name: params["name"],
      age: params["age"],
      height: params["height"],
      weight: params["weight"],
      reach: params["reach"],
      stance: params["stance"],
      image: params["image"],
      video: params["video"],
      win: params["win"],
      loss: params["loss"],
      draw: params["draw"],
      organization: params["organization"],
    )
    fighter.save
    render json: fighter.as_json
  end

  def update
    fighter = Fighter.find_by(id: params[:id])

    fighter.name = params["name"] || fighter.name
    fighter.age = params["age"] || fighter.age
    fighter.height = params["height"] || fighter.height
    fighter.weight = params["weight"] || fighter.weight
    fighter.reach = params["reach"] || fighter.reach
    fighter.stance = params["stance"] || fighter.stance
    fighter.image = params["image"] || fighter.image
    fighter.video = params["video"] || fighter.video
    fighter.win = params["win"] || fighter.win
    fighter.loss = params["loss"] || fighter.loss
    fighter.draw = params["draw"] || fighter.draw
    fighter.organization = params["organization"] || fighter.organization

    fighter.save
    render json: fighter.as_json
  end

  def destroy
    fighter = Fighter.find_by(id: params[:id])
    fighter.destroy
    render json: { message: "Selected fighter has been deleted" }
  end
end
