class Travel < ApplicationRecord
  validates :title, :image_url, presence: true
  validates :rating, numericality: { in: (1..5)}
end
