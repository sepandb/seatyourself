class Restaurant < ActiveRecord::Base
	validates :name, :presence => true
	validates :location, :presence => true
	validates :cuisine, :presence => true
	validates :menu, :presence => true

	has_many :reservations
	has_many :users, through: :reservations

end
