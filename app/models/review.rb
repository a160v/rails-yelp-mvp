class Review < ApplicationRecord
  # A review must belong to a restaurant.
  belongs_to :restaurant
  # A review must have a content and a rating.
  validates :content, :rating, presence: true
  # A review’s rating must be a number between 0 and 5 and must be an integer (not a float)
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5, only_integer: true }
end
