class FightNight < ApplicationRecord
  validates :fighter_id, presence: true
  validates :event_id, presence: true
  belongs_to :fighter
  belongs_to :event
end
