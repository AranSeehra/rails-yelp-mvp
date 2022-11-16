class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, length: { minimum: 4 }
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: (0..5) }
end
