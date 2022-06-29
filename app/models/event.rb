class Event < ApplicationRecord
  has_many :user, through: :selected_events
  has_many :fighters, through: :fight_nights
  has_many :live_streams
end
