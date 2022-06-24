class FightersController < ApplicationController
  def index
    fighters = Fighter.all
    render json: { message: "is it working? " }
  end
end
