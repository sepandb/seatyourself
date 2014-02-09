class DateTimeColumnsToReservations < ActiveRecord::Migration
  def up
  	remove_column :reservations, :reservation_time

  	add_column :reservations, :date, :string
  	add_column :reservations, :time, :string
  end
end
