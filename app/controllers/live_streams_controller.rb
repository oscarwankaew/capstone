class LiveStreamsController < ApplicationController
  def index
    live_streams = LiveStream.all
    render json: live_streams.as_json
  end

  def show
    live_stream = LiveStream.find_by(id: params[:id])
    render json: live_stream.as_json
  end

  def create
    live_stream = LiveStream.new(
      url: params["url"],
      event_id: params["event_id"],
    )
    live_stream.save
    render json: live_stream.as_json
  end

  def destroy
    live_stream = LiveStream.find_by(id: params[:id])
    live_stream.destroy
    render json: { message: "Selected live stream has been successfully deleted" }
  end
end
