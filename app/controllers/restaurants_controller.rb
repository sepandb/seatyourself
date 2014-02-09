class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(restaurant_params)

		#---- THE BELOW CODE is a more verbose way of using the restaurant_params method. The private method used makes this more secure and flexible
		# @restaurant = Restaurant.new
		# @restaurant.name = params[:restaurant][:name]
		# @restaurant.location = params[:restaurant][:location]
		# @restaurant.cuisine = params[:restaurant][:cuisine]
		# @restaurant.menu = params[:restaurant][:menu]
		# @restaurant.open_time = params[:restaurant][:open_time]
		# @restaurant.close_time = params[:restaurant][:close_time]
		# -------

		@restaunt.user = current_user
		if @restaurant.save
			redirect_to restaurants_path
		else
			render :new
		end

	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end


	private

	def restaurant_params
		params.require(:restaurant).permit(:name, :location, :cuisine, :menu, :open_time, :close_time)
	end

end
