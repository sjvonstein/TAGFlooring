class Unit < ApplicationRecord
  has_many :installations
  belongs_to :floorplan

end
