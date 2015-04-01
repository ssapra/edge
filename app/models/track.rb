class Track < ActiveRecord::Base
  has_many :events
  has_many :courses
  accepts_nested_attributes_for :courses
end
