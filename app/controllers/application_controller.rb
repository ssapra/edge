class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def find_track
    @track ||= Track.find_by_name(params[:track_name].capitalize)
  end
end
