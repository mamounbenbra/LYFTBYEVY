class AddColumnsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :location, :string
  end
end
