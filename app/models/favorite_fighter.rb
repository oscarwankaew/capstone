class FavoriteFighter < ApplicationRecord
  belongs_to :user
  belongs_to :fighter
end
