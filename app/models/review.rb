class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }, inclusion: { in: [0,1,2,3,4,5], allow_nil: false }
  validates :content, presence: true

end
