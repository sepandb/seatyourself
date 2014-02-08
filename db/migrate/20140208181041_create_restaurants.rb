class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.integer :open_time
      t.integer :close_time
      t.string :cuisine
      t.text :menu

      t.timestamps
    end
  end
end
