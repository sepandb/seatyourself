class UpdateRestaurantsChangeOpenAndCloseTimeToString < ActiveRecord::Migration
  def up # doing rake db:migrate;
  	remove_column :restaurants, :open_time
  	remove_column :restaurants, :close_time

  	add_column :restaurants, :open_time, :datetime
  	add_column :restaurants, :close_time, :datetime
  end

  def down # doing rake db:rollback;
  	remove_column :restaurants, :open_time
  	remove_column :restaurants, :close_time

  	add_column :restaurants, :open_time, :integer
  	add_column :restaurants, :close_time, :integer

  end
end
