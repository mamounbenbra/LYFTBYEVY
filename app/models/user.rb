class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
  has_many :bookings, dependent: :destroy
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :phone_number, presence: true
  has_many :locations
end
