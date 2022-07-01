class LiveStream < ApplicationRecord
  validates :url, presence: true
  belongs_to :event
end
