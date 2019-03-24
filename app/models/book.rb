class Book < ApplicationRecord
  belongs_to :author
  belongs_to :shelf
  validates_presence_of :title, :editorial, :isbn
  validates :author, presence: true
  validates :shelf, presence: true  
end
