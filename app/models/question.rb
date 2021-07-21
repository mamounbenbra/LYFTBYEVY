class Question < ApplicationRecord
  OUI=["Lyft By Evy", "Drainage Renata Franca"]
  attribute :tipe, presence: true
  attribute :question, presence: true
  attribute :answer, presence: true
end
