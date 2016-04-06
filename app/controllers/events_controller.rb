class EventsController < ApplicationController

  def index
    @events = Event.all
    respond_to do |format|
      format.html
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    respond_to do |format|
      if @event.save
        format.html { redirect_to root_path }
      else
        format.html { render 'index'}
      end
    end
  end

  def event_params
    params.require(:event).permit(:name,:description)
  end
end
