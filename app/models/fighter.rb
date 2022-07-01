class Fighter < ApplicationRecord
  has_many :favorite_fighters
  has_many :fight_nights
  has_many :users, through: :favorite_fighters
  has_many :events, through: :fight_nights
end
