class SelectedEventsController < ApplicationController
  def index
    selected_events = SelectedEvent.all
    render json: selected_events.as_json
  end

  def show
    selected_event = SelectedEvent.find_by(id: params[:id])
    render json: selected_event.as_json
  end

  def create
    selected_event = SelectedEvent.new(
      user_id: params["user_id"],
      event_id: params["event_id"],
    )
    selected_event.save
    render json: selected_event.as_json
  end

  def destroy
    selected_event = SelectedEvent.find_by(id: params[:id])
    selected_event.destroy
    render json: { message: "Selected event has been successfully deleted" }
  end
end
