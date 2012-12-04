class Location < ActiveRecord::Base
  attr_accessible :conference_room, :time

  validates :conference_room, presence: true
  validates :time, presence: true
end
