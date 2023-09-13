class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :travel
  validates :user, uniqueness: { scope: :travel}
end
