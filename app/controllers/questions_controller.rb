class QuestionsController < ApplicationController
    before_action :authenticate_user!

    def new
      @question = Question.new
    end

    def create
      @question = Question.new(question_params)
      if @question.save && @question.tipe == "Drainage Renata Franca"
        redirect_to renata_path, :notice => 'La question a été ajoutée!'
      elsif @question.save && @question.tipe == "Lyft By Evy"
        redirect_to lyft_path, :notice => 'La question a été ajoutée!'
      else
        render :new
      end
    end

    def edit
      @question = Question.find(params[:id])
    end

    def update
      @question = Question.find(params[:id])
      if @question.update(question_params) && @question.tipe == "Drainage Renata Franca"
        redirect_to renata_path, :notice => 'La question a été bien modifié!'
      elsif @question.update(question_params) && @question.tipe == "Lyft By Evy"
        redirect_to lyft_path, :notice => 'La question a été bien modifié!'
      else
        render :new
      end
    end

    def destroy
      @question = Question.find(params[:id])
      @question.destroy
      if @question.tipe == "Drainage Renata Franca"
      redirect_to renata_path, :notice => 'La question a été supprimé.'
      else
        redirect_to lyft_path, :notice => 'La question a été supprimé.'
      end
    end

  private

  def question_params
    params.require(:question).permit(:tipe, :question, :answer)
  end

end
