class BagsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @bag = Bag.new
  end

  # def index
  #   if params[:usage].present? && params[:address].present?
  #     @bags = Bag.where("address ILIKE :address", address: "%#{params[:address]}%")
  #     .where("usage ILIKE :usage", usage: "%#{params[:usage]}%")
  #   elsif params[:usage].present? && params[:address].blank?
  #     @bags = Bag.where("usage ILIKE :usage", usage: "%#{params[:usage]}%")
  #   elsif params[:address].present?
  #     @bags = Bag.where("address ILIKE :address", address: "%#{params[:address]}%")
  #   else
  #     @bags = Bag.all
  #   end
  # end

  def index
    if params[:address].present?
      @bags = Bag.where("address ILIKE ?", "%#{params[:address]}%")
      redirect_to "#{bags_path}#bags-section"
      if params[:usage].present?
        @bags = @bags.where("usage ILIKE ?", "%#{params[:usage]}%")
        redirect_to "#{bags_path}#bags-section"
      end
    else
      @bags = Bag.none
      flash.now[:alert] = "Please enter an address to search."
    end
  end


  def show
    @bag = Bag.find(params[:id])
  end

  def create
    @bag = current_user.bags.build(bag_params)
    if @bag.save
      redirect_to root_path, notice: 'Bag was successfully created.'
    else
      flash[:notice] = "Impossible de créer un nouveau sac"
      render 'new'
    end
  end

  private

  def bag_params
    params.require(:bag).permit(:brand, :state, :capacity, :usage, :address, :availability, :weight, :daily_price)
  end
end
