class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @bag = Bag.find(params[:bag_id])
    @booking.bag = @bag
    if @booking.save!
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:bag_id, :start_date, :end_date, :total_price, :status)
  end
end
