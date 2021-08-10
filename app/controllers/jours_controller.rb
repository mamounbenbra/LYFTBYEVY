class JoursController < ApplicationController
  def new
    @jour = Jour.new
  end

  def create
    @jour = Jour.new(jour_params)
     if @jour.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def jour_params
    params.require(:jour).permit(:day)
  end
end
