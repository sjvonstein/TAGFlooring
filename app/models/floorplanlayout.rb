class Floorplanlayout < ApplicationRecord
  belongs_to :floorplan
  belongs_to :room_name

  validates_presence_of :floorplan
  validates_presence_of :room_name
end
