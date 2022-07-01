class SelectedEventsController < ApplicationController
  before_action :authenticate_user

  def index
    selected_events = current_user.selected_events
    render json: selected_events.as_json
  end

  def show
    selected_event = current_user.selected_events.find_by(id: params[:id])
    render json: selected_event.as_json
  end

  def create
    selected_event = SelectedEvent.new(
      user_id: current_user.id,
      event_id: params["event_id"],
    )
    selected_event.save
    render json: selected_event.as_json
  end

  def destroy
    selected_event = current_user.selected_events.find_by(id: params[:id])
    selected_event.destroy
    render json: { message: "Selected event has been successfully deleted" }
  end
end
