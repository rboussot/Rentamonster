class Monster < ApplicationRecord
  AVAILABILITY = ["Ongoing", "Completed", "Forthcoming", "Canceled"]
  BEHAVIOR = ["Affectionate", "Motivating", "Scary", "Sportive", "Cuddling", "Offensive", "Defensive", "Mysterious"]
  has_attachment :photo
  has_many :bookings
  belongs_to :user
  validates :name, presence: true
  validates :species, presence: true
  validates :photo, presence: true
end
