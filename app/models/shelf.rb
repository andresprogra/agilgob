class Shelf < ApplicationRecord
  validates_presence_of :levels, :pasillo
  has_many :books
end
