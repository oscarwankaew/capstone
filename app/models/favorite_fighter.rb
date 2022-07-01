class FavoriteFighter < ApplicationRecord
  validates :user_id, presence: true
  validates :fighter_id, presence: true
  belongs_to :user
  belongs_to :fighter
end
