class Event < ApplicationRecord
  has_many :user, through: :selected_event
  has_many :fighters, through: :fight_night
  has_many :live_streams
end
