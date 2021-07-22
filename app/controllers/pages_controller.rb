class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :renata, :lyft]

  def home
  end

  def lyft
    @questions =  Question.where(tipe: "Lyft By Evy")
  end

  def renata
     if params[:query].present?
      sql_query = "question ILIKE :query OR answer ILIKE :query"
      @questions = Question.where(sql_query, query: "%#{params[:query]}%")
    else
      @questions =  Question.where(tipe: "Drainage Renata Franca")
    end
  end
end
