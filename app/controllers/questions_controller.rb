class QuestionsController < ApplicationController
    before_action :authenticate_user!

    def new
    @question = Question.new
    end

  def create
    @question = Question.new[question_params]
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(:tipe, :question, :answer)
  end
end
