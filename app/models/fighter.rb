class Fighter < ApplicationRecord
  has_many :users, through: :favorite_fighters
  has_many :events, through: :fight_nights
end
