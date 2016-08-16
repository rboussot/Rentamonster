class Monster < ApplicationRecord
        has_many :bookings
        belongs_to :user
        validates :name, presence: true
        validates :species, presence: true

end
