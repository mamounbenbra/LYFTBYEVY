class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :renata, :lyft]

  def home
  end

  def lyft
    @questions =  Question.where(tipe: "Lyft By Evy")
  end

  def renata
    @questions =  Question.where(tipe: "Drainage Renata Franca")
  end
end
