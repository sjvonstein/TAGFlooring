class Floorplan < ApplicationRecord
  belongs_to :community
  has_many :units
  has_many :floorplanlayouts
  has_many :room_names, through: :floorplanlayouts

  validates_presence_of :name
end
