class Monster < ApplicationRecord
  has_attachment :photo
  has_many :bookings
  belongs_to :user
  validates :name, presence: true
  validates :species, presence: true
  validates :photo, presence: true
end
