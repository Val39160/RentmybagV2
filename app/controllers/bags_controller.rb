class BagsController < ApplicationController

  def create
    @bag = Bag.new(bag_params)
    if @bag.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private


  def bag_params
    params.require(:bag).permit(:brand, :state, :capacity, :usage, :address, :availability, :daily_price)
  end
end
