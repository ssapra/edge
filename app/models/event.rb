class Event < ActiveRecord::Base
  belongs_to :track

  validates :title, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :start_time, presence: true
  validates :track_id, presence: true
end
