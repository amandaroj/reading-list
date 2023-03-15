class Book < ApplicationRecord
  belongs_to :bookshelves, :authors
  has_many :reviews, :genres
end
