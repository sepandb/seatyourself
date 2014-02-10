class AddRoleAndPasswordConfirm < ActiveRecord::Migration
  def up
  	remove_column :users, :role

  	add_column :users, :admin, :boolean
  	add_column :users, :password_digest, :string
  end
end
