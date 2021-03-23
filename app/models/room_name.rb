class RoomName < ApplicationRecord
  has_many :installations
  has_many :floorplans, through: :floorplanlayouts
end
