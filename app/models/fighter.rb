class Fighter < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :reach, presence: true
  validates :stance, presence: true
  validates :image, presence: true
  validates :video, presence: true
  validates :win, presence: true
  validates :loss, presence: true
  validates :draw, presence: true
  validates :organization, presence: true
  has_many :favorite_fighters
  has_many :fight_nights
  has_many :users, through: :favorite_fighters
  has_many :events, through: :fight_nights
end
