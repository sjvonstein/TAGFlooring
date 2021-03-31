class Floorplan < ApplicationRecord
  belongs_to :community
  has_many :units
  has_many :floorplanlayouts
  has_many :room_names, through: :floorplanlayouts
  has_many_attached :floorplan_images

  validates_presence_of :name
end
