class QuestionsController < ApplicationController
    before_action :authenticate_user!

    def new
      @question = Question.new
    end

    def create
      @question = Question.new(question_params)
      if @question.save
        redirect_to root_path, :notice => 'La question a été ajoutée!'
      else
        render :new
      end
    end

    def edit
      @question = Question.find(params[:id])
    end

    def update
      @question = Question.find(params[:id])
      @question.update(question_params)
      redirect_to root_path
    end

    def destroy
      @question = Question.find(params[:id])
      @question.destroy
      redirect_to root_path
    end

  private

  def question_params
    params.require(:question).permit(:tipe, :question, :answer)
  end

end
