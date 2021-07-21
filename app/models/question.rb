class Question < ApplicationRecord
  validates :tipe, presence: true
  validates :question, presence: true
  validates :answer, presence: true
  OUI = ["Lyft By Evy", "Drainage Renata Franca"]
end
