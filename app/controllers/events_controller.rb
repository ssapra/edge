class EventsController < ApplicationController
  before_filter :find_track
  def index
    @events = @track.events
  end
end

