class BagsController < ApplicationController
  def new
    @bags = Bag.new
  end

  def index
    @bags = Bag.all
  end

  def show
    @bag = Bag.find(params[:id])
  end

  def create
    @bag = Bag.new(bag_params)
    @bag.user_id = current_user.id
    if @bag.save
      redirect_to root_path
    else
      render 'new', notice: "Impossible de créer un nouveau sac"
    end
  end

  private

  def bag_params
    params.require(:bag).permit(:brand, :state, :capacity, :usage, :address, :availability, :weight, :daily_price)
  end
end
