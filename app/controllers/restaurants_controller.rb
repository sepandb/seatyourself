class RestaurantsController < ApplicationController

	def index
		@restaurants = []
		@restaurants.push("McDonald's")
	end
end
