class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @monster = Monster.find(params[:monster_id])
  end

  def create
    @booking = Booking.save(booking_params)
    if @booking.save
      redirect_to monster_bookings_path
    else
      render :new
    end
  end

  def index
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price, :status, :user_id, :monster_id)
  end
end
