class Installation < ApplicationRecord
  belongs_to :unit
  belongs_to :room_name
  belongs_to :product
  belongs_to :installer

end
