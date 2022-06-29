class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :fighters, through: :favorite_fighters
  has_many :events, through: :selected_events
end
