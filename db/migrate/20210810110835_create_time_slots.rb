class CreateTimeSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :time_slots do |t|
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
