class User < ActiveRecord::Base
	validates :name, :presence => true
	validates :email, :presence => true
	has_secure_password
	after_validation :default_role

	has_many :reservations
	has_many :restaurants, through: :reservations

	def default_role
		self.admin ||= false
	end
end
