class Taco < ApplicationRecord
  validates_presence_of :name, :price
  validates_numericality_of :price, integer: true
  self.per_page = 10
end
