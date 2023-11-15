class Review < ApplicationRecord
  belongs_to :restaurant

  AUTHORIZED_RATING = (0..5)

  validates :content, presence: true
  validates :rating, presence: true, numericality: { in: AUTHORIZED_RATING }
end
