class Restaurant < ActiveRecord::Base
	validates :name, :presence => true
	validates :location, :presence => true
	validates :cuisine, :presence => true
	validates :menu, :presence => true
end
