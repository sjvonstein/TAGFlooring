class Floorplan < ApplicationRecord
  belongs_to :community
  has_many :units
  has_many :layouts
end
