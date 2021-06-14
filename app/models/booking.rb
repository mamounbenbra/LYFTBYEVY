class Booking < ApplicationRecord
TYPES = ["Type 1", "Type2"]
  belongs_to :user
end
