class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
        has_many :monsters, dependent: :destroy
        has_many :bookings, dependent: :destroy
        validates :email, presence: true, uniqueness: true
        validates :first_name, presence: true
        validates :last_name, presence: true

end
