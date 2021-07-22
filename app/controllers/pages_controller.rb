class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :renata, :lyft]

  def home
  end

  def lyft
    if params[:query].present?
      sql_query = "question ILIKE :query OR answer ILIKE :query"
      @questions = Question.where(sql_query, query: "%#{params[:query]}%").where(tipe: "Lyft By Evy")
    else
      @questions =  Question.where(tipe: "Lyft By Evy")
    end
  end

  def renata
    if params[:query].present?
      sql_query = "question ILIKE :query OR answer ILIKE :query"
      @questions = Question.where(sql_query, query: "%#{params[:query]}%").where(tipe: "Drainage Renata Franca")
    else
      @questions =  Question.where(tipe: "Drainage Renata Franca")
    end
  end

end
