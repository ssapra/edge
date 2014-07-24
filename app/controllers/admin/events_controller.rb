class Admin::EventsController < ApplicationController
  before_filter :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new event_params
    if @event.save
      redirect_to admin_event_path(id: @event.id)
    else
      render :new
    end
  end

  def update
    if @event.update_attributes event_params
      redirect_to admin_event_path(id: @event.id)
    else
      render :new
    end
  end

  def destroy
    @event.destroy
    redirect_to admin_events_path
  end

  private

    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:id, :title, :image_url, :start_time, :end_time, :description, :location)
    end
end
