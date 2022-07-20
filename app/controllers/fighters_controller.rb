class FightersController < ApplicationController
  def index
    @fighters = Fighter.all
    render template: "fighters/index"
  end

  def show
    @fighter = Fighter.find_by(id: params[:id])
    render template: "fighters/show"
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
    if fighter.save
      @fighter = fighter
    else
      render json: { errors: fighter.errors.full_messages }, status: :expectation_failed
    end
    render template: "fighters/show"
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

    if fighter.save
      @fighter = fighter
    else
      render json: { errors: fighter.errors.full_messages }, status: :expectation_failed
    end
    render template: "fighters/show"
  end

  def destroy
    fighter = Fighter.find_by(id: params[:id])
    fighter.destroy
    render json: { message: "Selected fighter has been successfully deleted" }
  end
end
