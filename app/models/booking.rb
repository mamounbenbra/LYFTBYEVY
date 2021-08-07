class Booking < ApplicationRecord
TYPES = ["Lyft By Evy", "Drainage Renata Franca"]
TIMES = ["10H-11H41", "14H10-15H50", "16H20-18H", "18H-20H"]
LOCATIONS = ["Casablanca", "Paris"]
belongs_to :user
validates_uniqueness_of :time, scope: :date
end
