class Author < ApplicationRecord
  validates_presence_of :name, :last_name
  has_many :books
end
