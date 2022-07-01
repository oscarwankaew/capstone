class EventsController < ApplicationController
  def index
    @events = Event.all
    render template: "events/index"
  end

  def show
    @event = Event.find_by(id: params[:id])
    render template: "events/show"
  end

  def create
    event = Event.new(
      title: params["title"],
      date: params["date"],
      time: params["time"],
      location: params["location"],
      event_image: params["event_image"],
    )
    if event.save
      @event = event
    else
      render json: { errors: product.errors.full_messages }, status: :expectation_failed
    end
    render template: "events/show"
  end

  def destroy
    event = Event.find_by(id: params[:id])
    event.destroy
    render json: { message: "Selected event has been successfully deleted" }
  end
end
