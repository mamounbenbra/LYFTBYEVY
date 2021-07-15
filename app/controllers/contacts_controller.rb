class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      redirect_to root_path, :notice => "Message envoyé ! Je vous repondrai le plus vite possible !"
    else
      flash.now[:error] = 'Message impossible à envoyer'
      render :new
    end
  end
end
