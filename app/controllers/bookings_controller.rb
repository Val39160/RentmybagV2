class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @user = current_user
    @booking.user = @user
    @bag = Bag.find(params[:id])
    @booking.bag = @bag
    if @booking.save!
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end
    private

    def booking_params
      params.require(:booking).permit(:user_id, :bag_id, :start_date, :end_date, :total_price, :status)
    end
  end
