class Booking < ApplicationRecord
TYPES = ["Lyft By Evy", "Drainage Renata Franca"]
LOCATIONS = ["Casablanca", "Paris"]
belongs_to :user
#validates_uniqueness_of :time, scope: :date
has_many :time_slots, :through => :jour
end
