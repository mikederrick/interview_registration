class Location < ActiveRecord::Base
  attr_accessible :conference_room, :time

  validates :conference_room, presence: true
end
