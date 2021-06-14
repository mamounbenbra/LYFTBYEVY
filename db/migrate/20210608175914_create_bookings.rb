class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :massage_type
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.string :desc

      t.timestamps
    end
  end
end
