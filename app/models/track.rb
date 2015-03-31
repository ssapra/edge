class Track < ActiveRecord::Base
  has_many :events
  has_many :courses
end
