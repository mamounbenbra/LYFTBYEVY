class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :renata ]

  def home
  end

  def renata
  end
end
