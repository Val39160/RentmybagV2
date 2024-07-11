class BookingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @booking = Booking.new
    @bag = Bag.find(params[:bag_id])
    #raise
  end

  def create

    @bag = Bag.find(params[:bag_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.bag = @bag
    @booking.status = 'En cours'
    @booking.total_price = @bag.daily_price * (@booking.end_date - @booking.start_date).to_f

    if @booking.save!
      redirect_to dashboard_path, notice: 'Réservation créée avec succès.'
    else
      render :new, status: :unprocessable_entity, notice: 'Échec de la création de la réservation.'
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(update_params)
      redirect_to dashboard_path, notice: 'Réservation mise à jour avec succès.'
    else
      flash.now[:alert] = 'Échec de la mise à jour de la réservation.'
      render 'dashboard/index' # Afficher à nouveau le formulaire d'édition en cas d'erreurs de validation
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:bag_id, :start_date, :end_date, :total_price, :status)
  end

  def update_params
    params.require(:booking).permit(:status)
  end
end
