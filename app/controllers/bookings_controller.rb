class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @user = current_user
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @user = current_user
    @booking.user = @user
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:time, :location, :massage_type, :date)
  end

end
