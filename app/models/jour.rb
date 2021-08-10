class Jour < ApplicationRecord
  has_many :timeslots
  belongs_to :booking
end
