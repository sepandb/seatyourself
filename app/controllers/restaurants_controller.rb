class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new
		@restaurant.name = params[:restaurant][:name]
		@restaurant.location = params[:restaurant][:location]
		@restaurant.cuisine = params[:restaurant][:cuisine]
		@restaurant.menu = params[:restaurant][:menu]
		if @restaurant.save
			redirect_to restaurants_path
		else
			render :new
		end

	end

end
