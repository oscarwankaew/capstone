class EventsController < ApplicationController
  def index
    events = Event.all
    render json: events.as_json
  end

  def show
    event = Event.find_by(id: params[:id])
    render json: event.as_json
  end

  def create
    event = Event.new(
      title: params["title"],
      date: params["date"],
      time: params["time"],
      location: params["location"],
      event_image: params["event_image"],
    )
    event.save
    render json: event.as_json
  end

  def destroy
    event = Event.find_by(id: params[:id])
    event.destroy
    render json: { message: "Selected event has been successfully deleted" }
  end
end
