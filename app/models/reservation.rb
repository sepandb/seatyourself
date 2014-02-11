class Reservation < ActiveRecord::Base
	validates :restaurant_id, :presence => true
	belongs_to :user
	belongs_to :restaurant
end
