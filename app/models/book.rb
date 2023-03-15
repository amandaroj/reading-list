class Book < ApplicationRecord
  belongs_to :bookshelves
  has_many :reviews
end
