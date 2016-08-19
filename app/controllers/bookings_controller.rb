class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @monster = Monster.find(params[:monster_id])
  end

  def create
    @monster = Monster.find(params[:monster_id])
    @booking = Booking.new(booking_params)
    @booking.monster = @monster
    @booking.user = current_user
    @booking.status = "pending"
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def index
    @bookings = Booking.all
    @monsters = Monster.where(user: current_user)
    @owner_bookings = Booking.where(monster_id: @monsters)
  end

  def edit
    @monster = Monster.find(params[:monster_id])
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price, :status, user_id: current_user, monster_id: @monster)
  end
end
