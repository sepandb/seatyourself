class ReservationsController < ApplicationController
  def index
  	 @reservations = Reservation.all
     @user = current_user
  end

  def new
  	@restaurant = Restaurant.find(params[:id])
  	@reservation = Reservation.new
  end

  def create
  	@reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
  	@restaurant = Restaurant.find(params[:reservation][:restaurant_id])
  	if @reservation.valid?
  		@reservation.save
  		redirect_to reservations_path
  	else
  		render :new
  	end
  end


  private

  def reservation_params
  	params.require(:reservation).permit(:date, :time, :restaurant_id)
  end
end
