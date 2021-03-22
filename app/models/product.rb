class Product < ApplicationRecord
  belongs_to :category
  belongs_to :manufacturer
  belongs_to :uom
  has_many :layouts
  has_many :installations
end
