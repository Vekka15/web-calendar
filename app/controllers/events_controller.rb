class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.save
    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end

  def event_params
    params.require(:event).permit(:name,:description)
  end
end
