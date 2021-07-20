class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create1, :create]

  def new
    @contact = Contact.new
  end

  def create1
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      redirect_to create1_path
    else
      flash.now[:error] = 'Message impossible à envoyer'
      render :new
    end
  end
end
