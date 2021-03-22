class RoomName < ApplicationRecord
  has_many :installations
  has_many :layouts
end
