class RemoveColumnsFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :time
    remove_column :bookings, :desc
    remove_column :bookings, :date
    remove_column :bookings, :location
  end
end
