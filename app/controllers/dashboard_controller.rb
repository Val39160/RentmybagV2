class DashboardController < ApplicationController
  def profile
    @bags = Bag.where(user: current_user)
    @bookings = Booking.where(user: current_user)
  end
end
