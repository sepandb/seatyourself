class AddNamelocationColumnToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :name, :string
    add_column :restaurants, :location, :string
  end
end
