class Event < ApplicationRecord
  validates :title, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :location, presence: true
  validates :event_image, presence: true
  has_many :live_streams
  has_many :selected_events
  has_many :fight_nights
  has_many :user, through: :selected_events
  has_many :fighters, through: :fight_nights
end
