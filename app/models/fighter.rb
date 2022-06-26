class Fighter < ApplicationRecord
  has_many :users, through: :favorite_fighter
  has_many :events, through: :fight_night
end
