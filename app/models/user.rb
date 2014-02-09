class User < ActiveRecord::Base
	before_validation :default_role

	validates :name, :presence => true
	validates :email, :presence => true
	validates :role, :presence => true

	has_many :reservations
	has_many :restaurants, through: :reservations

	def default_role
		self.role ||= "user"
	end
end
