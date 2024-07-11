class DashboardController < ApplicationController
  before_action :authenticate_user!
  def profile
    @bags = Bag.where(user: current_user)
    @bookings = Booking.where(user: current_user)
    @owner_bookings = Booking.joins(:bag).where(bags: { user: current_user })
  end
end
