class TracksController < ApplicationController
  before_filter :find_track
  def show
  end

  def edit
  end

  def update
    @track = Track.find(params[:track][:id])
    if @track.update_attributes(track_params)
      redirect_to track_path(track_name: @track.name.downcase)
    else
      render 'edit'
    end
  end

  private

  def track_params
    params.require(:track).permit(:id, :name, :description, :application_link, :enrollment_open, course_attributes: [:id, :title, :description, :details, :instructor, :application_link, :enrollment_open])
  end
end
